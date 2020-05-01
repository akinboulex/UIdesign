import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String labelText;
  final obscureText, maxLength, inputType;

  Field({
    @required this.labelText,
    this.obscureText,
    this.maxLength,
    this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 26.0, right: 16.0),
      child: TextField(
        maxLength: maxLength,
        keyboardType: inputType,
        obscureText: obscureText,
        style: TextStyle(
          color: Color(0xff5779D4),
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
        autocorrect: false,
        autofocus: false,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16.0,
            color: Color(0xff5779D4),
            fontFamily: "Montserrat-Bold",
          ),
          contentPadding: EdgeInsets.only(left: 10.0),
          // hintText: "Organization/ Company",
          fillColor: Color(0xffFCFCFC),
          border: InputBorder.none,
          filled: true,
        ),
      ),
    );
  }
}
