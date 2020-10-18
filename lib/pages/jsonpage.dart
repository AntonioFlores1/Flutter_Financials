import 'dart:convert';
import 'package:flutter/material.dart';

class JsonPage extends StatefulWidget {
  @override
  _JsonPageState createState() => _JsonPageState();
}

class _JsonPageState extends State<JsonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Load Json File from local'),),
      body: Center(
        child: FutureBuilder(
          builder: (context,snapshot){
            var showData = json.decode(snapshot.data.toString());
            print(showData);
            // print(showData.length);
            print('local data');
          },
          future: DefaultAssetBundle.of(context).load('assets/localfile.json') ,
        ),
      ),
    );
  }
}
