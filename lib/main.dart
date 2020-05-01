import 'package:flutter/material.dart';
import 'package:des/regpage.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page(),
    ));

}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RegPage();
  }
}
