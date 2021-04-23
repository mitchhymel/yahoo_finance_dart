enum HistoricalIntervals {
  Day,
  Week,
  Month
}

String strFromHistoricalInterval(HistoricalIntervals value) {
  switch (value) {
    case HistoricalIntervals.Day:
      return '1d';
    case HistoricalIntervals.Week:
      return '1wk';
    case HistoricalIntervals.Month:
      return '1mo';
    default:
      throw Exception('Unsupported HistoricalIntervals enum value');
  }
}