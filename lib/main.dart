// @dart=2.10
import 'package:carousel_slider/carousel_slider.dart';
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
      title: 'Flutter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List data = [
    {
      "url":
          "https://s3.yugopolis.ru/media/media/cache/news/data/img/ac5d1e9c42c61563c35537e8009a577c/270718.jpg"
    },
    {
      "url":
          "https://prod-wolt-venue-images-cdn.wolt.com/5b72b9cfdc1877000bfb5931/ba8a8e260886cf4884d7654dac08b763"
    },
    {
      "url":
          "https://cdnmyslo.ru/NewsImage/76/e7/76e75796-19d1-4a6f-bb8d-ba68d9596981_1.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final headerEllipseRadius = Radius.elliptical(400, 100);
    final bodyEllipseRadius = Radius.elliptical(1000, 170);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rath
    const soft_red = const Color(0xFFFA8072);
    int _currentIndex = 0;
    List cardList = [Item1(), Item2(), Item3(), Item4()];
    List<T> map<T>(List list, Function handler) {
      List<T> result = [];
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
      return result;
    }

    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 50.0),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 5),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 5000),
                          height: 600,
                        ),
                        items: data.map((item) {
                          return GridTile(
                              child: Image.network(item["url"],
                                  fit: BoxFit.cover,
                                  width: 4000,
                                  height: 1000));
                        }).toList(),
                      ),
                    ),
                    Container(
                        height: 240,
                        decoration: BoxDecoration(
                            color: soft_red,
                            borderRadius: BorderRadius.only(
                                bottomLeft: headerEllipseRadius,
                                bottomRight: headerEllipseRadius)),
                        child: SafeArea(
                            child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Center(
                                    child: Text("Питание для современного ритма жизни",
                                  style: TextStyle(
                                    fontSize: 40.0,
                                    color: Colors.white,
                                  ),
                                ))))),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Text("Сделайте заказ!",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 200.0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: cardList.map((card) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.30,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            color: Colors.blueAccent,
                            child: card,
                          ),
                        );
                      });
                    }).toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(cardList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.blueAccent
                            : Colors.grey,
                      ),
                    );
                  }),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 50.0),
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: soft_red,
                      borderRadius: BorderRadius.only(
                          bottomLeft: bodyEllipseRadius,
                          bottomRight: bodyEllipseRadius,
                          topLeft: bodyEllipseRadius,
                          topRight: bodyEllipseRadius)),
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text("          Скачивайте приложение и\n               заказывайте прямо с\n                       телефона",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset("Icons/Main6.png", width: 240),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Image.asset("Icons/Main5.png", width: 310),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 50.0),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 50.0),
                  child: Text("Доставим быстро и качественно!",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        width: 220,
                        child: Column(
                          children: [
                            Image.asset("Icons/Main1.png", height: 200),
                            SizedBox(
                              height: 0,
                            ),
                            Text("Быстро",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Наш плюс - скорость. Закажите доставку в пределах города и мы все доставим за считанные минуты.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 220,
                        child: Column(
                          children: [
                            Image.asset("Icons/Main2.png", height: 200),
                            SizedBox(
                              height: 0,
                            ),
                            Text("Вкусно",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Лучшие повара планеты собрали вместе, чтобы приготовить для вас шедевр кулинарии!",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 220,
                        child: Column(
                          children: [
                            Image.asset("Icons/Main3.png"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Безопасно",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("В наше время безопасность это всё",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ]),
                Container(
                  padding: EdgeInsets.only(bottom: 50.0),
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: soft_red,
                      borderRadius: BorderRadius.only(
                          bottomLeft: bodyEllipseRadius,
                          bottomRight: bodyEllipseRadius,
                          topLeft: bodyEllipseRadius,
                          topRight: bodyEllipseRadius)),
                  child: Row(
                    children: [
                      Text("       Подписывайтесь и получите \n                      промокоды",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      Image.asset("Icons/Main4.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xffff4000),
              Color(0xffffcc66),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          Text("Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xff5f2c82), Color(0xff49a09d)]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          Text("Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xffff4000),
              Color(0xffffcc66),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/flutter_dev.png',
            height: 180.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          Text("Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
