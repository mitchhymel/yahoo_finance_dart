
import 'dart:convert';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:yahoo_finance/yahoo_finance.dart';

void main() async {

  var api = new YahooFinance(dioInterceptor: PrettyDioLogger());
  
  // var res = await api.options('MSFT');
  // var firstSymbol = res.optionChain.result.first.options.first.calls.first.contractSymbol;
  // print(firstSymbol);
  var res2 = await api.historical('AAPL210423C00060000', start: DateTime.parse('2020-04-19'));

  print(jsonEncode(res2));
}