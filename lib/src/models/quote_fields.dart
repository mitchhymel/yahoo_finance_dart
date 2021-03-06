
enum QuoteFields {
  language,
  region,
  quoteType,
  quoteSourceName,
  triggerable,
  currency,
  marketState,
  tradeable,
  exchange,
  shortName,
  longName,
  messageBoardId,
  exchangeTimezoneName,
  exchangeTimezoneShortName,
  gmtOffSetMilliseconds,
  market,
  esgPopulated,
  fiftyTwoWeekLowChange,
  fiftyTwoWeekLowChangePercent,
  fiftyTwoWeekRange,
  fiftyTwoWeekHighChange,
  fiftyTwoWeekHighChangePercent,
  fiftyTwoWeekLow,
  fiftyTwoWeekHigh,
  dividendDate,
  // maybe always present on EQUITY?
  earningsTimestamp,
  earningsTimestampStart,
  earningsTimestampEnd,
  trailingAnnualDividendRate,
  trailingPE,
  trailingAnnualDividendYield,
  epsTrailingTwelveMonths,
  epsForward,
  epsCurrentYear,
  priceEpsCurrentYear,
  sharesOutstanding,
  bookValue,
  fiftyDayAverage,
  fiftyDayAverageChange,
  fiftyDayAverageChangePercent,
  twoHundredDayAverage,
  twoHundredDayAverageChange,
  twoHundredDayAverageChangePercent,
  marketCap,
  forwardPE,
  priceToBook,
  sourceInterval,
  exchangeDataDelayedBy,
  firstTradeDateMilliseconds,
  priceHint,
  postMarketChangePercent,
  postMarketTime,
  postMarketPrice,
  postMarketChange,
  regularMarketChange,
  regularMarketChangePercent,
  regularMarketTime,
  regularMarketPrice,
  regularMarketDayHigh,
  regularMarketDayRange,
  regularMarketDayLow,
  regularMarketVolume,
  regularMarketPreviousClose,
  preMarketChange,
  preMarketChangePercent,
  preMarketTime,
  preMarketPrice,
  bid,
  ask,
  bidSize,
  askSize,
  fullExchangeName,
  financialCurrency,
  regularMarketOpen,
  averageDailyVolume3Month,
  averageDailyVolume10Day,
  displayName,
  symbol,
  // only on ETF?  not on EQUITY?
  ytdReturn,
  trailingThreeMonthReturns,
  trailingThreeMonthNavReturns,
  ipoExpectedDate,
  newListingDate,
  nameChangeDate,
  prevName,
  averageAnalystRating
}