import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Insira sua Senha",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
          border: InputBorder.none,
        ),
      ),
    );
  }
}