import 'package:flutter/material.dart';
import 'package:flutter_financials_app/model/usermodel.dart';
import 'package:flutter_financials_app/network/token.dart';
import 'package:flutter_financials_app/pages/checkings.dart';
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

  void loginVerification(String userName) async {

    if (userName == null) {
      return null;
    } else {
      try{
        final UserToken user = await createToken('clientId', 'sec');
        userUpdate = user;
        if (user == null) {
          print('nahhj');
        } else {
          Navigator.push(context, MaterialPageRoute(builder: (context) {return Checkings();},),);
        }
      }
      catch(error){
        print('in catch ');
      }
    }
  }



  @override
  void initState() {
    super.initState();
    new Future.delayed(const Duration(seconds: 1), () {
      loginVerification(userName);
    });
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


