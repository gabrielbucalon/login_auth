import 'package:flutter/material.dart';
import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.textColor = kPrimaryColor,
    this.color = Colors.white,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        color: kPrimaryColor,
        onPressed: () {},
        child: Text("LOGIN", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
