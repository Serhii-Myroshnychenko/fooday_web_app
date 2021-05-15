// @dart=2.10
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:fooday_web_app/Pages/AboutUs.dart';
import 'UrlPage.dart';

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
    final bodyEllipseRadius = Radius.elliptical(1000, 170);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rath
    const soft_red = const Color(0xFFFA8072);
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
                        height: 250.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: soft_red,
                            borderRadius: new BorderRadius.only(
                              bottomRight: new Radius.elliptical(
                                  MediaQuery.of(context).size.width, 50.0),
                              bottomLeft: new Radius.elliptical(
                                  MediaQuery.of(context).size.width, 50.0),
                            )),
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  MaterialButton(
                                    child: Text("FooDay",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
                                    ),
                                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));},
                                  ),
                                  Row(
                                    children: <Widget>[
                                      MaterialButton(
                                        child: Text("Assortment",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: (){},
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      MaterialButton(
                                        child: Text("Basket",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: (){},
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      MaterialButton(
                                        child: Text("About us",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));},
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          //height: 5,
                                            child: MaterialButton(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(20.0))),
                                              onPressed: () {},
                                              child: Text(
                                                "Войти",
                                                style: TextStyle(
                                                    color: Colors.red[300]),
                                              ),
                                            )),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Center(
                                  child: Text(
                                    "Питание для современного ритма\nжизни", textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.white,
                                    ),
                                  )),
                            ],
                          ),
                        )),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    "Сделайте заказ!",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Spacer(flex: 12),
                    Container(
                      width: 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset("Icons/Carosel_1.png"),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Картофель",
                            style: TextStyle(color: soft_red, fontSize: 17),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Ингредиенты:картофель вареный, зелень.\n100 г.\nКалорийность - 101 ккал.",
                            style: TextStyle(color: Colors.black, fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Spacer(flex: 3),
                    Container(
                      width: 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset("Icons/Carosel_2.png"),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Text(
                            "Плов",
                            style: TextStyle(color: soft_red, fontSize: 17),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Ингредиенты:рис, мясо, морковь.\n100 г.\nКалорийность - 205 ккал.",
                            style: TextStyle(color: Colors.black, fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Spacer(flex: 3),
                    Container(
                      width: 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset("Icons/Carosel_3.png"),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Text(
                            "Шаурма",
                            style: TextStyle(color: soft_red, fontSize: 17),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Ингредиенты:лаваш, мясо, огурец.\n200 г.\nКалорийность - 430 ккал.",
                            style: TextStyle(color: Colors.black, fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Spacer(flex: 12),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 50.0),
                ),
                Container(
                  height: 50,
                  width: 220,
                  child: OutlineButton(
                    child: Text(
                      "Перейти к покупкам",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xff3D3739),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    textColor: Colors.white,
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    borderSide: BorderSide(width: 2.0, color: soft_red),
                    onPressed: () {
                      // do some
                    },
                  ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              "Скачивайте приложение и\nзаказывайте прямо с\nтелефона",
                              textAlign: TextAlign.center,
                              style:
                              TextStyle(color: Colors.white, fontSize: 40),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                              child: Image.asset("Icons/Main6.png", width: 240),
                              onPressed: UrlPage.launchURL_2,
                            ),
                          ],
                        ),
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
                  child: Text(
                    "Доставим быстро и качественно!",
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
                            Text(
                              "Быстро",
                              style:
                              TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Наш плюс - скорость. Закажите доставку в пределах города и мы все доставим за считанные минуты.",
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
                            Text(
                              "Вкусно",
                              style:
                              TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Лучшие повара планеты собрали вместе, чтобы приготовить для вас шедевр кулинарии!",
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
                            Text(
                              "Безопасно",
                              style:
                              TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "В наше время безопасность это всё",
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Подписывайтесь и получите\nпромокоды",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      MaterialButton(
                        shape: CircleBorder(
                            side: BorderSide(style: BorderStyle.solid)),
                        child: Image.asset("Icons/Main4.png"),
                        color: Colors.white,
                        onPressed: UrlPage.launchURL,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 50.0),
                ),
                Container(
                  width: 2000.0,
                  height: 200.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black87,
                      borderRadius: new BorderRadius.only(
                        topLeft: new Radius.elliptical(
                            MediaQuery.of(context).size.width, 50.0),
                        topRight: new Radius.elliptical(
                            MediaQuery.of(context).size.width, 50.0),
                      )),
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
                                style: TextStyle(color: soft_red, fontSize: 45),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "         @все права защищены",
                                textAlign: TextAlign.left,
                                style: TextStyle(color: soft_red, fontSize: 20),
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
                                  child: MaterialButton(
                                    child: Image.asset("Icons/Footer4.png",
                                        height: 70, width: 150),
                                    onPressed: UrlPage.launchURL_2,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: MaterialButton(
                                    child: Image.asset("Icons/Footer1.png",
                                        height: 55, width: 60),
                                    onPressed: UrlPage.launchURL,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: MaterialButton(
                                    child: Image.asset("Icons/Footer2.png",
                                        height: 55, width: 55),
                                    onPressed: UrlPage.launchEmailSubmission,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: MaterialButton(
                                    child: Image.asset("Icons/Footer3.png",
                                        height: 55, width: 55),
                                    onPressed: UrlPage.launchURL_1,
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("     "))
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
      ),
    );
  }
}

