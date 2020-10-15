import 'package:flutter/material.dart';
import 'package:flutter_financials_app/Login/background.dart';
import 'package:flutter_financials_app/Sign%20up/signup_screen.dart';
import 'package:flutter_financials_app/componets/already_have_an_account.dart';
import 'package:flutter_financials_app/componets/rounded_button.dart';
import 'package:flutter_financials_app/componets/rounded_input_field.dart';
import 'package:flutter_financials_app/componets/rounded_password_field.dart';
import 'package:flutter_financials_app/componets/text_field_container.dart';
import 'package:google_fonts/google_fonts.dart';



class Body extends StatelessWidget {
  final Widget child;
  const Body({
   Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('LOGIN',style: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),
        SizedBox(height: size.height * 0.03,),
        RoundedInputField(hintText: 'Your Email',
          onChanged: (value){}  ,
        ),
        RoundedPasswordField(
          onChnaged: (value){},
        ),
        RoundedButton(
          text:'LOGIN',
          press: (){},
        ),
        SizedBox(height: size.height * 0.03,),
        AlreadyHaveAnAccountCheck(
          press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();
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








