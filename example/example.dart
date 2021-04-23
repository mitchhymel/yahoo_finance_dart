
import 'dart:convert';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:yahoo_finance/yahoo_finance.dart';

void main() async {

  var api = new YahooFinance(dioInterceptor: PrettyDioLogger());
  var res = await api.historical('MSFT', start: DateTime.parse('2021-04-19'));
  print(jsonEncode(res));
}