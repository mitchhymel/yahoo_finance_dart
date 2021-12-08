class OptionsResponse {
  OptionChain? optionChain;

  OptionsResponse({this.optionChain});

  OptionsResponse.fromJson(Map<String, dynamic> json) {
    optionChain = json['optionChain'] != null
        ? new OptionChain.fromJson(json['optionChain'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.optionChain != null) {
      data['optionChain'] = this.optionChain!.toJson();
    }
    return data;
  }
}

class OptionChain {
  List<OptionsResult>? result;
  dynamic error;

  OptionChain({this.result, this.error});

  OptionChain.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = [];
      json['result'].forEach((v) {
        result!.add(new OptionsResult.fromJson(v));
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

class OptionsResult {
  String? underlyingSymbol;
  List<int>? expirationDates;
  List<int>? strikes;
  bool? hasMiniOptions;
  OptionsQuote? quote;
  List<Options>? options;

  OptionsResult(
      {this.underlyingSymbol,
      this.expirationDates,
      this.strikes,
      this.hasMiniOptions,
      this.quote,
      this.options});

  OptionsResult.fromJson(Map<String, dynamic> json) {
    underlyingSymbol = json['underlyingSymbol'];
    expirationDates = json['expirationDates'].cast<int>();
    strikes = json['strikes'].cast<int>();
    hasMiniOptions = json['hasMiniOptions'];
    quote = json['quote'] != null ? new OptionsQuote.fromJson(json['quote']) : null;
    if (json['options'] != null) {
      options = [];
      json['options'].forEach((v) {
        options!.add(new Options.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['underlyingSymbol'] = this.underlyingSymbol;
    data['expirationDates'] = this.expirationDates;
    data['strikes'] = this.strikes;
    data['hasMiniOptions'] = this.hasMiniOptions;
    if (this.quote != null) {
      data['quote'] = this.quote!.toJson();
    }
    if (this.options != null) {
      data['options'] = this.options!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OptionsQuote {
  String? language;
  String? region;
  String? quoteType;
  String? quoteSourceName;
  bool? triggerable;
  String? currency;
  String? marketState;
  String? exchange;
  String? shortName;
  String? longName;
  String? messageBoardId;
  String? exchangeTimezoneName;
  String? exchangeTimezoneShortName;
  int? gmtOffSetMilliseconds;
  String? market;
  bool? esgPopulated;
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
  double? fiftyTwoWeekLow;
  double? fiftyTwoWeekHigh;
  int? dividendDate;
  int? earningsTimestamp;
  int? earningsTimestampStart;
  int? earningsTimestampEnd;
  double? trailingAnnualDividendRate;
  double? trailingPE;
  double? trailingAnnualDividendYield;
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

  OptionsQuote(
      {this.language,
      this.region,
      this.quoteType,
      this.quoteSourceName,
      this.triggerable,
      this.currency,
      this.marketState,
      this.exchange,
      this.shortName,
      this.longName,
      this.messageBoardId,
      this.exchangeTimezoneName,
      this.exchangeTimezoneShortName,
      this.gmtOffSetMilliseconds,
      this.market,
      this.esgPopulated,
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
      this.fiftyTwoWeekLow,
      this.fiftyTwoWeekHigh,
      this.dividendDate,
      this.earningsTimestamp,
      this.earningsTimestampStart,
      this.earningsTimestampEnd,
      this.trailingAnnualDividendRate,
      this.trailingPE,
      this.trailingAnnualDividendYield,
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

  OptionsQuote.fromJson(Map<String, dynamic> json) {
    language = json['language'];
    region = json['region'];
    quoteType = json['quoteType'];
    quoteSourceName = json['quoteSourceName'];
    triggerable = json['triggerable'];
    currency = json['currency'];
    marketState = json['marketState'];
    exchange = json['exchange'];
    shortName = json['shortName'];
    longName = json['longName'];
    messageBoardId = json['messageBoardId'];
    exchangeTimezoneName = json['exchangeTimezoneName'];
    exchangeTimezoneShortName = json['exchangeTimezoneShortName'];
    gmtOffSetMilliseconds = json['gmtOffSetMilliseconds'];
    market = json['market'];
    esgPopulated = json['esgPopulated'];
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
    fiftyTwoWeekLow = json['fiftyTwoWeekLow'];
    fiftyTwoWeekHigh = json['fiftyTwoWeekHigh'];
    dividendDate = json['dividendDate'];
    earningsTimestamp = json['earningsTimestamp'];
    earningsTimestampStart = json['earningsTimestampStart'];
    earningsTimestampEnd = json['earningsTimestampEnd'];
    trailingAnnualDividendRate = json['trailingAnnualDividendRate'];
    trailingPE = json['trailingPE'];
    trailingAnnualDividendYield = json['trailingAnnualDividendYield'];
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
    data['exchange'] = this.exchange;
    data['shortName'] = this.shortName;
    data['longName'] = this.longName;
    data['messageBoardId'] = this.messageBoardId;
    data['exchangeTimezoneName'] = this.exchangeTimezoneName;
    data['exchangeTimezoneShortName'] = this.exchangeTimezoneShortName;
    data['gmtOffSetMilliseconds'] = this.gmtOffSetMilliseconds;
    data['market'] = this.market;
    data['esgPopulated'] = this.esgPopulated;
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
    data['fiftyTwoWeekLow'] = this.fiftyTwoWeekLow;
    data['fiftyTwoWeekHigh'] = this.fiftyTwoWeekHigh;
    data['dividendDate'] = this.dividendDate;
    data['earningsTimestamp'] = this.earningsTimestamp;
    data['earningsTimestampStart'] = this.earningsTimestampStart;
    data['earningsTimestampEnd'] = this.earningsTimestampEnd;
    data['trailingAnnualDividendRate'] = this.trailingAnnualDividendRate;
    data['trailingPE'] = this.trailingPE;
    data['trailingAnnualDividendYield'] = this.trailingAnnualDividendYield;
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

class Options {
  int? expirationDate;
  bool? hasMiniOptions;
  List<Option>? calls;
  List<Option>? puts;

  Options({this.expirationDate, this.hasMiniOptions, this.calls, this.puts});

  Options.fromJson(Map<String, dynamic> json) {
    expirationDate = json['expirationDate'];
    hasMiniOptions = json['hasMiniOptions'];
    if (json['calls'] != null) {
      calls = [];
      json['calls'].forEach((v) {
        calls!.add(new Option.fromJson(v));
      });
    }
    if (json['puts'] != null) {
      puts = [];
      json['puts'].forEach((v) {
        puts!.add(new Option.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['expirationDate'] = this.expirationDate;
    data['hasMiniOptions'] = this.hasMiniOptions;
    if (this.calls != null) {
      data['calls'] = this.calls!.map((v) => v.toJson()).toList();
    }
    if (this.puts != null) {
      data['puts'] = this.puts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Option {
  String? contractSymbol;
  double? strike;
  String? currency;
  double? lastPrice;
  double? change;
  double? percentChange;
  int? volume;
  int? openInterest;
  double? bid;
  double? ask;
  String? contractSize;
  int? expiration;
  int? lastTradeDate;
  double? impliedVolatility;
  bool? inTheMoney;

  Option(
      {this.contractSymbol,
      this.strike,
      this.currency,
      this.lastPrice,
      this.change,
      this.percentChange,
      this.volume,
      this.openInterest,
      this.bid,
      this.ask,
      this.contractSize,
      this.expiration,
      this.lastTradeDate,
      this.impliedVolatility,
      this.inTheMoney});

  Option.fromJson(Map<String, dynamic> json) {
    contractSymbol = json['contractSymbol'];
    strike = json['strike'];
    currency = json['currency'];
    lastPrice = json['lastPrice'];
    change = json['change'];
    percentChange = json['percentChange'];
    volume = json['volume'];
    openInterest = json['openInterest'];
    bid = json['bid'];
    ask = json['ask'];
    contractSize = json['contractSize'];
    expiration = json['expiration'];
    lastTradeDate = json['lastTradeDate'];
    impliedVolatility = json['impliedVolatility'];
    inTheMoney = json['inTheMoney'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contractSymbol'] = this.contractSymbol;
    data['strike'] = this.strike;
    data['currency'] = this.currency;
    data['lastPrice'] = this.lastPrice;
    data['change'] = this.change;
    data['percentChange'] = this.percentChange;
    data['volume'] = this.volume;
    data['openInterest'] = this.openInterest;
    data['bid'] = this.bid;
    data['ask'] = this.ask;
    data['contractSize'] = this.contractSize;
    data['expiration'] = this.expiration;
    data['lastTradeDate'] = this.lastTradeDate;
    data['impliedVolatility'] = this.impliedVolatility;
    data['inTheMoney'] = this.inTheMoney;
    return data;
  }
}
