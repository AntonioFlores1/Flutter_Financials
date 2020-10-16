import 'package:flutter/material.dart';
import 'package:flutter_financials_app/Sign%20up/signup_screen.dart';
import 'package:flutter_financials_app/componets/rounded_button.dart';
import 'package:flutter_financials_app/pages/background.dart';
import 'package:flutter_financials_app/pages/loginscreen.dart';
import 'package:google_fonts/google_fonts.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text('Welcome to   ',style: GoogleFonts.inter(
          fontSize: 32,
          fontWeight: FontWeight.w900,
          color: Colors.black),
          textAlign: TextAlign.left,
        ),
            SizedBox(height: size.height * 0.05,),
            Image.asset('assets/banklogo.png',height: size.height * 0.3, scale: 1,),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text:'LOGIN',
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();
              print('press');
            },
            ),
            );
            },
          ),
          RoundedButton(
            text:'SIGN UP',
            press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();
            },
            ),
            );
            },
            color: Colors.deepPurple[100],
            textColor: Colors.black,
          )
        ],
      ),
    ),
    );
  }
}





