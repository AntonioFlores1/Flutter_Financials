import 'package:flutter/material.dart';
import 'package:flutter_financials_app/Sign%20up/background.dart';
import 'package:flutter_financials_app/componets/already_have_an_account.dart';
import 'package:flutter_financials_app/componets/rounded_button.dart';
import 'package:flutter_financials_app/componets/rounded_input_field.dart';
import 'package:flutter_financials_app/componets/rounded_password_field.dart';
import 'package:flutter_financials_app/pages/checkings.dart';
import 'package:flutter_financials_app/pages/loginscreen.dart';
import 'package:flutter_financials_app/pages/transactions.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('SIGN UP', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.purple[900]),textAlign: TextAlign.left,),
      Text('Get on board with your finances', style: TextStyle(fontSize: 18,color: Colors.black)),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value){},
            ),
        ),
        RoundedPasswordField(
          onChnaged: (value){},
        ),
        Padding(
          padding: const EdgeInsets.only(bottom:18.0),
          child: RoundedButton(
            text: 'SIGNUP',
            press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return Checkings();
            },
            ),
            );},
          ),
        ),
        AlreadyHaveAnAccountCheck(
          login: false,
          press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();
          },
          ),
          );
          },
        )
      ],
    ),
    );
  }
}


