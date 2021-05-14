
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FooDay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'FooDay'),
    );
  }
}

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
                              bottom: new Radius.elliptical(MediaQuery
                                  .of(context)
                                  .size
                                  .width, 100.0)
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
                      height: 100.0,
                      decoration:new BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.red[300],
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
                      child: Text("FooDay"),

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