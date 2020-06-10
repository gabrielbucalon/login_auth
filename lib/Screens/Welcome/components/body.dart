import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //This size provide us total heigth and width of our screen
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Welcome To app Flutter Auth",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SvgPicture.asset("assets/icons/chat.svg", height: size.height * 0.45),
        RoundedButton(size: size)
      ],
    ));
  }
}

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
