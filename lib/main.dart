// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter_financials_app/pages/loading.dart';
import 'package:flutter_financials_app/pages/checkings.dart';
import 'package:flutter_financials_app/pages/stocks.dart';
import 'package:flutter_financials_app/pages/transactions.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/checkings',
  routes: {
    '/' : (context) => Loading(),
      '/checkings': (context) => Checkings(),
      '/stocks' : (context) => Stocks(),
      '/transactions': (context) => Transactions(),
}
));
