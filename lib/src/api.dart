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

  Dio dio;
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
    Interceptor dioInterceptor,
    BaseOptions dioOptions,
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
  /// TODO: Support fields and common options
  Future<QuoteResponse> quote(List<String> symbols) async {
    var symbolsJoined = symbols.join(',');
    var response = await dio.get('$QUOTE_PATH',
      queryParameters: {
        'symbols': symbolsJoined
      }
    );
    return QuoteResponse.fromJson(response.data);
  }

  static const List<QuoteSummaryModules> _defaultModules = [
    QuoteSummaryModules.price,
    QuoteSummaryModules.summaryDetail
  ];

  /// https://github.com/gadicc/node-yahoo-finance2/blob/devel/docs/modules/quoteSummary.md
  ///
  /// TODO: Create model for QuoteSummaryResponse
  Future<Map> quoteSummary(String symbol, {
    List<QuoteSummaryModules> modules=_defaultModules
  }) async {
    var response = await dio.get('$QUOTE_SUMMARY_PATH/$symbol',
      queryParameters: {
        'modules': modules.map((x) => EnumToString.convertToString(x)).join(',')
      }
    );
    return response.data;
  }

  /// https://github.com/gadicc/node-yahoo-finance2/blob/devel/docs/modules/options.md
  ///
  /// TODO: Support query options
  Future<OptionsResponse> options(String symbol) async {
    var response = await dio.get('$OPTIONS_PATH/$symbol');
    return OptionsResponse.fromJson(response.data);
  }

  /// https://github.com/gadicc/node-yahoo-finance2/blob/devel/docs/modules/historical.md
  ///
  /// TODO: support events and includeAdjustedCloase parameter
  Future<String> historical(String symbol, {
    DateTime start,
    DateTime end,
    HistoricalIntervals interval=HistoricalIntervals.Day
  }) async {
    Map<String, dynamic> queryParameters = {
        'interval': strFromHistoricalInterval(interval), 
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

    // TODO: parse csv string into object
    return response.data;
  }

  /// https://github.com/gadicc/node-yahoo-finance2/blob/devel/docs/modules/search.md
  /// 
  /// TODO: support query options
  Future<Map> search(String query) async {
    var response = await dio.get('$SEARCH_PATH',
      queryParameters: {
        'q': query
      }
    );
    return response.data;
  }
}