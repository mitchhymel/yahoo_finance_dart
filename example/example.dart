
import 'dart:convert';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:yahoo_finance/src/models/models.dart';
import 'package:yahoo_finance/yahoo_finance.dart';
void main() async {

  var api = new YahooFinance(dioInterceptor: PrettyDioLogger());
  var res = await api.quoteSummary('MSFT', modules: [QuoteSummaryModules.assetProfile]);
  print(jsonEncode(res));
}