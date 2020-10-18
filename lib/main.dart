// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter_financials_app/pages/loading.dart';
import 'package:flutter_financials_app/pages/checkings.dart';
import 'package:flutter_financials_app/pages/stocks.dart';
import 'package:flutter_financials_app/pages/transactions.dart';
import 'package:flutter_financials_app/pages/welcomescreen.dart';
import 'package:flutter_financials_app/webviewer/website.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/welcomescreen',
  routes: {
    '/' : (context) => Loading(),
    '/website': (context) => WebviewSetup(),
    '/welcomescreen': (context) => WelcomeScreen(),
    '/checkings': (context) => Checkings(),
      '/stocks' : (context) => Stocks(),
      '/transactions': (context) => Transactions(),
  }
));
