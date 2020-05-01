import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:des/fill.dart';
import 'package:des/field.dart';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: data.height / 40,
          ),
          Container(
            child: Image.asset(
              'assets/img.png',
            ),
            height: data.height / 3.7,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                "Sign Up",
//            textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: "Montserrat-Bold",
                  color: Color(0xff5779D4),
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Field(
            labelText: "Name",
            obscureText: false,
            inputType: TextInputType.emailAddress,
          ),
          Field(
            labelText: "Organisation/ Company",
            obscureText: false,
            inputType: TextInputType.emailAddress,
          ),
          Field(
            labelText: "Position/ Role",
            obscureText: false,
            inputType: TextInputType.emailAddress,
          ),
          Field(
            labelText: "Email",
            obscureText: false,
            inputType: TextInputType.emailAddress,
          ),
          Field(
            labelText: "Mobile Number",
            obscureText: false,
            inputType: TextInputType.number,
          ),
          Field(
            labelText: "ID \ / Passport number",
            obscureText: true,
            inputType: TextInputType.number,
          ),
          Field(
            labelText: "Bio (50 words in max)",
            obscureText: false,
            inputType: TextInputType.emailAddress,
            maxLength: 50,
          ),
          SizedBox(
            height: data.height / 40,
          ),
          Container(
            padding: EdgeInsets.only(left: 26.0, right: 16.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return FillIn();
                  }),
                );
              },
              color: Color(0xff5779D4),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat-Bold",
                    color: Colors.white,
                    fontSize: 20.0
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

