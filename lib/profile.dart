import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Row(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: data.width / 5,
                height: double.infinity,
                color: Color(0xff5454A4),
              )
            ],
          ),
          Row(
            children: <Widget>[
              SafeArea(
                child: Container(
                  width: data.width - (data.width / 5),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: data.height / 29,
                      ),
                      CircleAvatar(
                        maxRadius: 57,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          "assets/c.jpg",
                        ),
                      ),
                      SizedBox(
                        height: data.height / 45,
                      ),
                      Text(
                        "Ibrahim Shaqura",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff412E8F),

                        ),
                      ),
                      SizedBox(
                        height: data.height / 70,
                      ),
                      Text(
                        "view profile",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff412E8F),
                        ),
                      ),
                      SizedBox(
                        height: data.height / 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30.0,
                          right: 30.0,
                        ),
                        child: Container(
                          height: data.height / 2.75,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffF1F2FB),
                                blurRadius: 25.0,
                                spreadRadius: 1.0,
                                offset: Offset(4.0, 4.0),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 60.0,
                                    right: 60.0,
                                    top: 60.0,
                                    bottom: 20.0,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/bqr.png",
                                    ),
                                  ),
                                ),
                                Text(
                                  "ID: 1234567890",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                    color: Color(
                                      0xff53C6E3,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          // top: 8.0,
                          left: 30.0,
                          right: 30.0,
                        ),
                        child: Container(
                          height: data.height / 22,
                          decoration: BoxDecoration(
                            color: Color(0xffF4F4FB),
                          ),
                          child: Center(
                            child: Text(
                              "Your Favorites",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff6152A2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          // top: 8.0,
                          left: 30.0,
                          right: 30.0,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            height: data.height / 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffF1F2FB),
                                  blurRadius: 11.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "Agenda",
                                style: TextStyle(

                                  fontFamily: "Montserrat",
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff9CD590),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
//                      Container(
//                          width: data.width / 1.5,
//                          child: Divider(
//                            color: Colors.red,
//                          ),),
                      SizedBox(
                        height: 3.0,
                        width: data.width / 1.5,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          // top: 8.0,
                          left: 30.0,
                          right: 30.0,
                        ),
                        child: Container(
                          height: data.height / 22,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffF1F2FB),
                                blurRadius: 25.0,
                                spreadRadius: 1.0,
                                offset: Offset(4.0, 4.0),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(

                              "Feedback",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff9CD590),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

