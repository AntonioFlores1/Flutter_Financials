import 'package:flutter/material.dart';
import 'package:flutter_financials_app/model/usercontent.dart';
import 'package:flutter_financials_app/model/usermodel.dart';
import 'package:flutter_financials_app/network/content.dart';
import 'package:flutter_financials_app/network/token.dart';
import 'package:flutter_financials_app/pages/checkings.dart';
import 'package:flutter_financials_app/webviewer/website.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class Loading extends StatefulWidget {
  final String userName;

  const Loading({Key key, this.userName}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState(userName);
}

class _LoadingState extends State<Loading> {

  String userName;

  UserToken userUpdate;

  _LoadingState(this. userName);

  Future<String> loginVerification(String userName) async {

    if (userName == null) {
      return null;
    } else {
      try{
        // Login Credentials go here
        final UserToken user = await createToken();
        userUpdate = user;
        if (user == null) {
          print('User is Null');
        } else {
          var val = await user.token.accessToken.toString();
          Navigator.push(context, MaterialPageRoute(builder: (context) {return Checkings();},),);
          return val;
        }
      }
      catch(error){
        print('Error $error');
      }
    }
  }

  void getData() async {
    String token = await loginVerification(userName);
    print('token is $token');
    String fastlink = await usersContent(token);
      // Navigator.push(context, MaterialPageRoute(builder: (context){return WebviewSetup(fastLink: fastlink);},),);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child:
      SpinKitFoldingCube(
        color: Colors.purple[900],
        size: 90.0,
      ),
      ),
      );
    }
  }


