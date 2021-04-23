
class HistoricalResult {
  DateTime date;
  double open;
  double high;
  double low;
  double close;
  double adjustedClose;
  int volume;

  HistoricalResult({
    this.date,
    this.open,
    this.high,
    this.low,
    this.close,
    this.adjustedClose,
    this.volume,
  });

   Map<String, dynamic> toJson() {
    return {
      'date': date.toString(),
      'open': open,
      'high': high,
      'low': low,
      'close': close,
      'adjustedClose': adjustedClose,
      'volume': volume,
    };
  }
  
  static HistoricalResult fromCsvLine(String line) {
    List<String> parts = line.split(',');
    return HistoricalResult(
      date: DateTime.parse(parts[0]),
      open: double.parse(parts[1]),
      high: double.parse(parts[2]),
      low: double.parse(parts[3]),
      close: double.parse(parts[4]),
      adjustedClose: double.parse(parts[5]),
      volume: int.parse(parts[6]),
    );
  }

  /// Response is in the form:
  /// Date,Open,High,Low,Close,Adj Close,Volume
  /// 2021-04-23,257.880005,261.410004,257.269989,260.910004,260.910004,11443984
  /// ...
  static List<HistoricalResult> fromCsvHistoricalResponse(String response) {
    List<HistoricalResult> res = [];
    List<String> lines = response.split('\n');
    // skip first line since that is the csv header to tell us field names
    for (int i = 1; i < lines.length; i++) {
      String line = lines[i];
      res.add(HistoricalResult.fromCsvLine(line));
    }

    return res;
  }
}