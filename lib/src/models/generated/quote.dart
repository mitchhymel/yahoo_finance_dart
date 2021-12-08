class QuoteResponse {
  Quote? quoteResponse;

  QuoteResponse({this.quoteResponse});

  QuoteResponse.fromJson(Map<String, dynamic> json) {
    quoteResponse = json['quoteResponse'] != null
        ? new Quote.fromJson(json['quoteResponse'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.quoteResponse != null) {
      data['quoteResponse'] = this.quoteResponse!.toJson();
    }
    return data;
  }
}

class Quote {
  List<QuoteResult>? result;
  dynamic error;

  Quote({this.result, this.error});

  Quote.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = [];
      json['result'].forEach((v) {
        result!.add(new QuoteResult.fromJson(v));
      });
    }
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    data['error'] = this.error;
    return data;
  }
}

class QuoteResult {
  String? language;
  String? region;
  String? quoteType;
  String? quoteSourceName;
  bool? triggerable;
  String? currency;
  String? marketState;
  double? fiftyTwoWeekLow;
  double? fiftyTwoWeekHigh;
  int? dividendDate;
  int? earningsTimestamp;
  int? earningsTimestampStart;
  int? earningsTimestampEnd;
  double? trailingAnnualDividendRate;
  double? trailingPE;
  double? trailingAnnualDividendYield;
  int? firstTradeDateMilliseconds;
  int? priceHint;
  double? postMarketChangePercent;
  int? postMarketTime;
  double? postMarketPrice;
  double? postMarketChange;
  double? regularMarketChange;
  double? regularMarketChangePercent;
  int? regularMarketTime;
  double? regularMarketPrice;
  double? regularMarketDayHigh;
  String? regularMarketDayRange;
  double? regularMarketDayLow;
  int? regularMarketVolume;
  double? regularMarketPreviousClose;
  double? bid;
  double? ask;
  int? bidSize;
  int? askSize;
  String? fullExchangeName;
  String? financialCurrency;
  double? regularMarketOpen;
  int? averageDailyVolume3Month;
  int? averageDailyVolume10Day;
  double? fiftyTwoWeekLowChange;
  double? fiftyTwoWeekLowChangePercent;
  String? fiftyTwoWeekRange;
  double? fiftyTwoWeekHighChange;
  double? fiftyTwoWeekHighChangePercent;
  String? exchange;
  String? shortName;
  String? longName;
  String? messageBoardId;
  String? exchangeTimezoneName;
  String? exchangeTimezoneShortName;
  int? gmtOffSetMilliseconds;
  String? market;
  bool? esgPopulated;
  double? epsTrailingTwelveMonths;
  double? epsForward;
  double? epsCurrentYear;
  double? priceEpsCurrentYear;
  int? sharesOutstanding;
  double? bookValue;
  double? fiftyDayAverage;
  double? fiftyDayAverageChange;
  double? fiftyDayAverageChangePercent;
  double? twoHundredDayAverage;
  double? twoHundredDayAverageChange;
  double? twoHundredDayAverageChangePercent;
  int? marketCap;
  double? forwardPE;
  double? priceToBook;
  int? sourceInterval;
  int? exchangeDataDelayedBy;
  String? averageAnalystRating;
  bool? tradeable;
  String? displayName;
  String? symbol;

  QuoteResult(
      {this.language,
      this.region,
      this.quoteType,
      this.quoteSourceName,
      this.triggerable,
      this.currency,
      this.marketState,
      this.fiftyTwoWeekLow,
      this.fiftyTwoWeekHigh,
      this.dividendDate,
      this.earningsTimestamp,
      this.earningsTimestampStart,
      this.earningsTimestampEnd,
      this.trailingAnnualDividendRate,
      this.trailingPE,
      this.trailingAnnualDividendYield,
      this.firstTradeDateMilliseconds,
      this.priceHint,
      this.postMarketChangePercent,
      this.postMarketTime,
      this.postMarketPrice,
      this.postMarketChange,
      this.regularMarketChange,
      this.regularMarketChangePercent,
      this.regularMarketTime,
      this.regularMarketPrice,
      this.regularMarketDayHigh,
      this.regularMarketDayRange,
      this.regularMarketDayLow,
      this.regularMarketVolume,
      this.regularMarketPreviousClose,
      this.bid,
      this.ask,
      this.bidSize,
      this.askSize,
      this.fullExchangeName,
      this.financialCurrency,
      this.regularMarketOpen,
      this.averageDailyVolume3Month,
      this.averageDailyVolume10Day,
      this.fiftyTwoWeekLowChange,
      this.fiftyTwoWeekLowChangePercent,
      this.fiftyTwoWeekRange,
      this.fiftyTwoWeekHighChange,
      this.fiftyTwoWeekHighChangePercent,
      this.exchange,
      this.shortName,
      this.longName,
      this.messageBoardId,
      this.exchangeTimezoneName,
      this.exchangeTimezoneShortName,
      this.gmtOffSetMilliseconds,
      this.market,
      this.esgPopulated,
      this.epsTrailingTwelveMonths,
      this.epsForward,
      this.epsCurrentYear,
      this.priceEpsCurrentYear,
      this.sharesOutstanding,
      this.bookValue,
      this.fiftyDayAverage,
      this.fiftyDayAverageChange,
      this.fiftyDayAverageChangePercent,
      this.twoHundredDayAverage,
      this.twoHundredDayAverageChange,
      this.twoHundredDayAverageChangePercent,
      this.marketCap,
      this.forwardPE,
      this.priceToBook,
      this.sourceInterval,
      this.exchangeDataDelayedBy,
      this.averageAnalystRating,
      this.tradeable,
      this.displayName,
      this.symbol});

  QuoteResult.fromJson(Map<String, dynamic> json) {
    language = json['language'];
    region = json['region'];
    quoteType = json['quoteType'];
    quoteSourceName = json['quoteSourceName'];
    triggerable = json['triggerable'];
    currency = json['currency'];
    marketState = json['marketState'];
    fiftyTwoWeekLow = json['fiftyTwoWeekLow'];
    fiftyTwoWeekHigh = json['fiftyTwoWeekHigh'];
    dividendDate = json['dividendDate'];
    earningsTimestamp = json['earningsTimestamp'];
    earningsTimestampStart = json['earningsTimestampStart'];
    earningsTimestampEnd = json['earningsTimestampEnd'];
    trailingAnnualDividendRate = json['trailingAnnualDividendRate'];
    trailingPE = json['trailingPE'];
    trailingAnnualDividendYield = json['trailingAnnualDividendYield'];
    firstTradeDateMilliseconds = json['firstTradeDateMilliseconds'];
    priceHint = json['priceHint'];
    postMarketChangePercent = json['postMarketChangePercent'];
    postMarketTime = json['postMarketTime'];
    postMarketPrice = json['postMarketPrice'];
    postMarketChange = json['postMarketChange'];
    regularMarketChange = json['regularMarketChange'];
    regularMarketChangePercent = json['regularMarketChangePercent'];
    regularMarketTime = json['regularMarketTime'];
    regularMarketPrice = json['regularMarketPrice'];
    regularMarketDayHigh = json['regularMarketDayHigh'];
    regularMarketDayRange = json['regularMarketDayRange'];
    regularMarketDayLow = json['regularMarketDayLow'];
    regularMarketVolume = json['regularMarketVolume'];
    regularMarketPreviousClose = json['regularMarketPreviousClose'];
    bid = json['bid'];
    ask = json['ask'];
    bidSize = json['bidSize'];
    askSize = json['askSize'];
    fullExchangeName = json['fullExchangeName'];
    financialCurrency = json['financialCurrency'];
    regularMarketOpen = json['regularMarketOpen'];
    averageDailyVolume3Month = json['averageDailyVolume3Month'];
    averageDailyVolume10Day = json['averageDailyVolume10Day'];
    fiftyTwoWeekLowChange = json['fiftyTwoWeekLowChange'];
    fiftyTwoWeekLowChangePercent = json['fiftyTwoWeekLowChangePercent'];
    fiftyTwoWeekRange = json['fiftyTwoWeekRange'];
    fiftyTwoWeekHighChange = json['fiftyTwoWeekHighChange'];
    fiftyTwoWeekHighChangePercent = json['fiftyTwoWeekHighChangePercent'];
    exchange = json['exchange'];
    shortName = json['shortName'];
    longName = json['longName'];
    messageBoardId = json['messageBoardId'];
    exchangeTimezoneName = json['exchangeTimezoneName'];
    exchangeTimezoneShortName = json['exchangeTimezoneShortName'];
    gmtOffSetMilliseconds = json['gmtOffSetMilliseconds'];
    market = json['market'];
    esgPopulated = json['esgPopulated'];
    epsTrailingTwelveMonths = json['epsTrailingTwelveMonths'];
    epsForward = json['epsForward'];
    epsCurrentYear = json['epsCurrentYear'];
    priceEpsCurrentYear = json['priceEpsCurrentYear'];
    sharesOutstanding = json['sharesOutstanding'];
    bookValue = json['bookValue'];
    fiftyDayAverage = json['fiftyDayAverage'];
    fiftyDayAverageChange = json['fiftyDayAverageChange'];
    fiftyDayAverageChangePercent = json['fiftyDayAverageChangePercent'];
    twoHundredDayAverage = json['twoHundredDayAverage'];
    twoHundredDayAverageChange = json['twoHundredDayAverageChange'];
    twoHundredDayAverageChangePercent =
        json['twoHundredDayAverageChangePercent'];
    marketCap = json['marketCap'];
    forwardPE = json['forwardPE'];
    priceToBook = json['priceToBook'];
    sourceInterval = json['sourceInterval'];
    exchangeDataDelayedBy = json['exchangeDataDelayedBy'];
    averageAnalystRating = json['averageAnalystRating'];
    tradeable = json['tradeable'];
    displayName = json['displayName'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['language'] = this.language;
    data['region'] = this.region;
    data['quoteType'] = this.quoteType;
    data['quoteSourceName'] = this.quoteSourceName;
    data['triggerable'] = this.triggerable;
    data['currency'] = this.currency;
    data['marketState'] = this.marketState;
    data['fiftyTwoWeekLow'] = this.fiftyTwoWeekLow;
    data['fiftyTwoWeekHigh'] = this.fiftyTwoWeekHigh;
    data['dividendDate'] = this.dividendDate;
    data['earningsTimestamp'] = this.earningsTimestamp;
    data['earningsTimestampStart'] = this.earningsTimestampStart;
    data['earningsTimestampEnd'] = this.earningsTimestampEnd;
    data['trailingAnnualDividendRate'] = this.trailingAnnualDividendRate;
    data['trailingPE'] = this.trailingPE;
    data['trailingAnnualDividendYield'] = this.trailingAnnualDividendYield;
    data['firstTradeDateMilliseconds'] = this.firstTradeDateMilliseconds;
    data['priceHint'] = this.priceHint;
    data['postMarketChangePercent'] = this.postMarketChangePercent;
    data['postMarketTime'] = this.postMarketTime;
    data['postMarketPrice'] = this.postMarketPrice;
    data['postMarketChange'] = this.postMarketChange;
    data['regularMarketChange'] = this.regularMarketChange;
    data['regularMarketChangePercent'] = this.regularMarketChangePercent;
    data['regularMarketTime'] = this.regularMarketTime;
    data['regularMarketPrice'] = this.regularMarketPrice;
    data['regularMarketDayHigh'] = this.regularMarketDayHigh;
    data['regularMarketDayRange'] = this.regularMarketDayRange;
    data['regularMarketDayLow'] = this.regularMarketDayLow;
    data['regularMarketVolume'] = this.regularMarketVolume;
    data['regularMarketPreviousClose'] = this.regularMarketPreviousClose;
    data['bid'] = this.bid;
    data['ask'] = this.ask;
    data['bidSize'] = this.bidSize;
    data['askSize'] = this.askSize;
    data['fullExchangeName'] = this.fullExchangeName;
    data['financialCurrency'] = this.financialCurrency;
    data['regularMarketOpen'] = this.regularMarketOpen;
    data['averageDailyVolume3Month'] = this.averageDailyVolume3Month;
    data['averageDailyVolume10Day'] = this.averageDailyVolume10Day;
    data['fiftyTwoWeekLowChange'] = this.fiftyTwoWeekLowChange;
    data['fiftyTwoWeekLowChangePercent'] = this.fiftyTwoWeekLowChangePercent;
    data['fiftyTwoWeekRange'] = this.fiftyTwoWeekRange;
    data['fiftyTwoWeekHighChange'] = this.fiftyTwoWeekHighChange;
    data['fiftyTwoWeekHighChangePercent'] = this.fiftyTwoWeekHighChangePercent;
    data['exchange'] = this.exchange;
    data['shortName'] = this.shortName;
    data['longName'] = this.longName;
    data['messageBoardId'] = this.messageBoardId;
    data['exchangeTimezoneName'] = this.exchangeTimezoneName;
    data['exchangeTimezoneShortName'] = this.exchangeTimezoneShortName;
    data['gmtOffSetMilliseconds'] = this.gmtOffSetMilliseconds;
    data['market'] = this.market;
    data['esgPopulated'] = this.esgPopulated;
    data['epsTrailingTwelveMonths'] = this.epsTrailingTwelveMonths;
    data['epsForward'] = this.epsForward;
    data['epsCurrentYear'] = this.epsCurrentYear;
    data['priceEpsCurrentYear'] = this.priceEpsCurrentYear;
    data['sharesOutstanding'] = this.sharesOutstanding;
    data['bookValue'] = this.bookValue;
    data['fiftyDayAverage'] = this.fiftyDayAverage;
    data['fiftyDayAverageChange'] = this.fiftyDayAverageChange;
    data['fiftyDayAverageChangePercent'] = this.fiftyDayAverageChangePercent;
    data['twoHundredDayAverage'] = this.twoHundredDayAverage;
    data['twoHundredDayAverageChange'] = this.twoHundredDayAverageChange;
    data['twoHundredDayAverageChangePercent'] =
        this.twoHundredDayAverageChangePercent;
    data['marketCap'] = this.marketCap;
    data['forwardPE'] = this.forwardPE;
    data['priceToBook'] = this.priceToBook;
    data['sourceInterval'] = this.sourceInterval;
    data['exchangeDataDelayedBy'] = this.exchangeDataDelayedBy;
    data['averageAnalystRating'] = this.averageAnalystRating;
    data['tradeable'] = this.tradeable;
    data['displayName'] = this.displayName;
    data['symbol'] = this.symbol;
    return data;
  }
}
