import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
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
          "Bem-vindo ao aplicativo Flutter atenticador",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(height: size.height * 0.05),
        SvgPicture.asset("assets/icons/chat.svg", height: size.height * 0.45),
        SizedBox(height: size.height * 0.05),
        RoundedButton(
            text: "Entrar",
            color: kPrimaryColor,
            textColor: Colors.white,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            }),
        RoundedButton(
          text: "Registra-se",
          press: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }),
              );
          },
          textColor: Colors.black,
          color: kPrimaryLightColor,
        ),
      ],
    ));
  }
}
