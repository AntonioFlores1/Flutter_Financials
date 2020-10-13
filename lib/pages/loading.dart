import 'package:flutter/material.dart';



class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setUp(){

    }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Text('in loading ...'),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // setUp();
    // Navigator.pushReplacementNamed(context, '/checkings');

  }

}
