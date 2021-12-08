import 'package:dio/dio.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:yahoo_finance/src/models/models.dart' hide Options;

class YahooFinance {

  static const String OPTIONS_PATH = 'v7/finance/options';
  static const String QUOTE_PATH = 'v7/finance/quote';
  static const String QUOTE_SUMMARY_PATH = 'v10/finance/quoteSummary';
  static const String HISTORICAL_PATH = 'v7/finance/download';
  static const String SEARCH_PATH = 'v1/finance/search';

  static const String QUERY2_BASE_URI = 'https://query2.finance.yahoo.com/';

  late Dio dio;
  BaseOptions defaultDioOptions = BaseOptions(
    baseUrl: QUERY2_BASE_URI,
    connectTimeout: 5000,
    receiveTimeout: 3000,
    headers: {
      'Accept': '*/*',
      'User-Agent': 'Unofficial yahoo_finance dart lib',
    }
  );

  YahooFinance({
    Interceptor? dioInterceptor,
    BaseOptions? dioOptions,
  }) {
    if (dioOptions == null) {
      dioOptions = defaultDioOptions;
    }

    dio = Dio(dioOptions);

    if (dioInterceptor != null) {
      dio.interceptors.add(dioInterceptor);
    }
  }

  /// https://github.com/gadicc/node-yahoo-finance2/blob/devel/docs/modules/quote.md
  ///
  /// Certain fields are always returned, but you can specify a subset
  /// of the fields returned with [fields]
  Future<QuoteResponse> quote(List<String> symbols, {
    List<QuoteFields>? fields
  }) async {
    var symbolsJoined = symbols.join(',');
    Map<String, dynamic> queryParameters = {
      'symbols': symbolsJoined,
    };

    if (fields != null) {
      queryParameters.addAll({
        'fields': fields.map((x) => EnumToString.convertToString(x)).toList()
      });
    }

    var response = await dio.get('$QUOTE_PATH',
      queryParameters: queryParameters
    );
    return QuoteResponse.fromJson(response.data);
  }

  static const List<QuoteSummaryModules> _defaultModules = [
    QuoteSummaryModules.price,
    QuoteSummaryModules.summaryDetail
  ];

  /// https://github.com/gadicc/node-yahoo-finance2/blob/devel/docs/modules/quoteSummary.md
  ///
  /// To get all modules call it with:
  /// quoteSummary('AAPL', modules: QuoteSummaryModules.values)
  /// 
  Future<QuoteSummaryResponse> quoteSummary(String symbol, {
    List<QuoteSummaryModules> modules=_defaultModules
  }) async {
    var response = await dio.get('$QUOTE_SUMMARY_PATH/$symbol',
      queryParameters: {
        'modules': modules.map((x) => EnumToString.convertToString(x)).join(',')
      }
    );
    return QuoteSummaryResponse.fromJson(response.data);
  }

  /// https://github.com/gadicc/node-yahoo-finance2/blob/devel/docs/modules/options.md
  ///
  Future<OptionsResponse> options(String symbol, {
    bool formatted=false,
    String lang='en-US',
    String region='US'
  }) async {
    var response = await dio.get('$OPTIONS_PATH/$symbol', 
      queryParameters: {
        'formatted': formatted,
        'lang': lang,
        'region': region,
      }
    );
    return OptionsResponse.fromJson(response.data);
  }

  /// https://github.com/gadicc/node-yahoo-finance2/blob/devel/docs/modules/historical.md
  ///
  /// TODO: Find out what [events] or [includeAdjustedClose] do
  Future<List<HistoricalResult>> historical(String symbol, {
    DateTime? start,
    DateTime? end,
    HistoricalIntervals interval=HistoricalIntervals.Day,
    String events='history',
    bool includeAdjustedClose=true
  }) async {
    Map<String, dynamic> queryParameters = {
        'interval': strFromHistoricalInterval(interval), 
        'includeAdjustedClose': includeAdjustedClose,
        'events': events,
    };

    if (start != null) {
      if (end == null) {
        end = DateTime.now();
      }

      queryParameters.addAll({
        'period1': start.millisecondsSinceEpoch ~/ 1000,
        'period2': end.millisecondsSinceEpoch ~/ 1000
      });
    }
    var response = await dio.get('$HISTORICAL_PATH/$symbol',
      queryParameters: queryParameters,
      options: Options(
        listFormat: ListFormat.csv
      )
    );

    return HistoricalResult.fromCsvHistoricalResponse(response.data);
  }

  /// https://github.com/gadicc/node-yahoo-finance2/blob/devel/docs/modules/search.md
  /// 
  /// TODO: support rest of options
  Future<Map?> search(String query, {
    String lang='en-US',
    String region='US',
    int quotesCount=5,
    int newsCount=5,
    // bool enableFuzzyQuery=false,
    // String quotesQueryId='tss_match_phrase_query',
    // String multiQuoteQueryId='multi_quote_single_token_query',
    // String newsQueryId='news_cie_vespa',
    // bool enableCb=true,
    // bool enableNavLinks=true,
    // bool enableEnhancedTrivialQuery=true,
  }) async {
    var response = await dio.get('$SEARCH_PATH',
      queryParameters: {
        'q': query,
        'lang': lang,
        'region': region,
        'quotesCount': quotesCount,
        'newsCount': newsCount,
      }
    );
    return response.data;
  }
}