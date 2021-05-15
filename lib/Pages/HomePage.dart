import 'dart:ui';

import 'package:flutter/widgets.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fooday_web_app/Icons/facebook_icon.dart';
import 'package:fooday_web_app/Icons/google_icon.dart';
import 'package:fooday_web_app/main.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new  Scaffold(

      body: SafeArea(
        child: Column(
          children: <Widget>[
            //Header Container
            //Body Container
            Expanded(
              child: SingleChildScrollView(
                padding:  EdgeInsets.symmetric(horizontal: 0.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: AppBar(
                        title: Text(widget.title),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.vertical(
                              bottom: new Radius.elliptical(MediaQuery.of(context).size.width, 100.0)
                          ),
                        ),
                        backgroundColor: Colors.red[300],
                        toolbarHeight: 130,
                      ),
                    ),
                    Container(
                      color: Colors.green,
                      height: 300.0,
                      alignment: Alignment.center,
                      child: Text("Content 2"),
                    ),
                    Container(color: Colors.red,
                      height: 400.0,
                      alignment: Alignment.center,
                      child: Text("Content 3"),
                    ),
                    Container(
                      width: 2000.0,
                      height: 200.0,
                      decoration:new BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.black87,
                          borderRadius: new BorderRadius.only(
                            topLeft: new Radius.elliptical(MediaQuery
                                .of(context)
                                .size
                                .width, 50.0),
                            topRight: new Radius.elliptical(MediaQuery
                                .of(context)
                                .size
                                .width, 50.0),
                          )
                      ),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "    FooDay",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.red[300],
                                        fontSize: 45
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "         @все права защищены",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.red[300],
                                        fontSize: 20
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(

                                  children: [

                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Image.asset("Pictures/Get_Android_app.png",
                                        height: 40,
                                        width: 100,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.facebook,
                                        color: Colors.red[300],
                                        size: 60,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}