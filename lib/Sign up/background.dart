import 'package:flutter/material.dart';

class Background extends StatelessWidget {

  final Widget child;

  const Background({
    Key key,
    @required  this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            width: size.width * 0.4,
            child: Image.asset('assets/images/brdisplay.png'),
          ),
          Positioned(
            top: 0,
            left: 0,
            width: size.width * 0.4,
            child: Image.asset('assets/images/tldisplay.png'),
          ),
          child,
        ],
      ),
    );
  }
}