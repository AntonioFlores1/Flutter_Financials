import 'package:flutter/material.dart';
import 'package:flutter_financials_app/componets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChnaged;

  const RoundedPasswordField({
    Key key, this.onChnaged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChnaged,
        decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(Icons.lock,
            color: Colors.deepPurple[900],
          ),
          suffixIcon: Icon(Icons.visibility,
            color: Colors.purple[900],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}