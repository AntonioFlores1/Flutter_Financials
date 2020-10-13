import 'package:flutter/material.dart';

void main() => runApp(Material(
  initialRoute: "/"
  routes:{
    "/" : (context) => Loading(),
    "/checking" : (context) => Checking(),
    "/stocks" : (context) => Stocks(),
    "/transactions": (context) => Transactions(),
}
));
