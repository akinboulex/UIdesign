import 'package:des/profile.dart';
import 'package:flutter/material.dart';

class FillIn extends StatefulWidget {
  @override
  _FillInState createState() => _FillInState();
}

class _FillInState extends State<FillIn> {
  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff695BA8),
      body: Stack(
        // fit:StackFit.expand,
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.all(15.0),
              height: data.height / 1.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF8F8FF),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(7.0),
                        topLeft: Radius.circular(7.0),
                      ),
                    ),
                    height: data.height / 11,
                    child: Center(
                      child: Text(
                        "Leave your feedback",
                        style: TextStyle(
                          fontFamily: "Montserrat-Bold",
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff412E8F),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: data.height / 20,
                  ),
                  Text(
                    "Rate this session",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0BB0D9),

                    ),
                  ),
                  SizedBox(
                    height: data.height / 70,
                  ),
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Icon(
//                        Icons.star,
//                        size: 35.0,
//                        color: Color(0xffFFC506),
//                      ),
//                      Icon(
//                        Icons.star,
//                        size: 35.0,
//                        color: Color(0xffFFC506),
//                      ),
//                      Icon(
//                        Icons.star,
//                        size: 35.0,
//                        color: Color(0xffFFC506),
//                      ),
//                      Icon(
//                        Icons.star,
//                        size: 35.0,
//                        color: Color(0xffD8D4EB),
//                      ),
//                      Icon(
//                        Icons.star,
//                        size: 35.0,
//                        color: Color(0xffD8D4EB),
//                      ),
//                    ],
//                  ),
                  StartIcon(),
                  SizedBox(
                    height: data.height / 72,
                  ),
                  Text(
                    "Make a note",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0BB0D9),
                    ),
                  ),
                  SizedBox(
                    height: data.height / 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Container(
                      height: data.height / 3.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey[400]),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: TextField(
                        maxLines: 70,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Color(0xff0BB0D9),
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                        ),
                        autocorrect: false,
                        autofocus: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10.0),
                          //fillColor: Colors.white,
                          border: InputBorder.none,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: data.height / 72,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        height: 55.0,
                        child: MaterialButton(
                          elevation: 0.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return Profile();
                              }),
                            );
                          },
                          color: Color(0xff5CBA47),
                          child: Center(
                            child: Text(

                              "Submit",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Bold",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StartIcon extends StatefulWidget {
  @override
  _StartIconState createState() => _StartIconState();
}

class _StartIconState extends State<StartIcon> {
  var _myColorOne = Color(0xffFFC506);
  var _myColorTwo = Color(0xffFFC506);
  var _myColorThree = Color(0xffFFC506);
  var _myColorFour = Color(0xffFFC506);
  var _myColorFive = Color(0xffFFC506);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new IconButton(
          icon: new Icon(
            Icons.star,
            size: 35.0,
          ),
          onPressed: () => setState(() {
            _myColorOne = Color(0xffFFC506);
            _myColorTwo = Color(0xffD8D4EB);
            _myColorThree =Color(0xffD8D4EB);
            _myColorFour = Color(0xffD8D4EB);
            _myColorFive = Color(0xffD8D4EB);
          }),
          color: _myColorOne,
        ),
        new IconButton(
          icon: new Icon(
            Icons.star,
            size: 35.0,
          ),
          onPressed: () => setState(() {
            _myColorOne = Color(0xffFFC506);
            _myColorTwo = Color(0xffFFC506);
            _myColorThree = Color(0xffD8D4EB);
            _myColorFour = Color(0xffD8D4EB);
            _myColorFive = Color(0xffD8D4EB);
          }),
          color: _myColorTwo,
        ),
        new IconButton(
          icon: new Icon(
            Icons.star,
            size: 35.0,
          ),
          onPressed: () => setState(() {
            _myColorOne = Color(0xffFFC506);
            _myColorTwo = Color(0xffFFC506);
            _myColorThree = Color(0xffFFC506);
            _myColorFour = Color(0xffD8D4EB);
            _myColorFive = Color(0xffD8D4EB);
          }),
          color: _myColorThree,
        ),
        new IconButton(
          icon: new Icon(
            Icons.star,
            size: 35.0,
          ),
          onPressed: () => setState(() {
            _myColorOne = Color(0xffFFC506);
            _myColorTwo = Color(0xffFFC506);
            _myColorThree = Color(0xffFFC506);
            _myColorFour = Color(0xffFFC506);
            _myColorFive = Color(0xffD8D4EB);
          }),
          color: _myColorFour,
        ),
        new IconButton(
          icon: new Icon(
            Icons.star,
            size: 35.0,
          ),
          onPressed: () => setState(() {
            _myColorOne = Color(0xffFFC506);
            _myColorTwo = Color(0xffFFC506);
            _myColorThree = Color(0xffFFC506);
            _myColorFour = Color(0xffFFC506);
            _myColorFive = Color(0xffFFC506);
          }),
          color: _myColorFive,
        ),
      ],
    );
  }
}
