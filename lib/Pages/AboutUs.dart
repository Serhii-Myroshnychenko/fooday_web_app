
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooday_web_app/Pages/HomePage.dart';
import 'package:fooday_web_app/Pages/UrlPage.dart';



class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}


class _AboutUsState extends State<AboutUs> {

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
                    Container(
                        height: 80.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: soft_red,
                            ),
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
                                        onPressed: (){},
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

                            ],
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 30.0, left: 50.0),
                  child: Text(
                    "Добро пожаловать!"
                        "\nНаша компания приветствует всех, кто зашёл на сайт!"
                        "\nНаш сайт предлагает самые низкие цены, даже и не пытайтесь найти дешевле!"
                        "\nНаш сайт существует уже много лет, на рынке мы являемся самой надёжной и успешной компанией. Покупайте на нашем сайте снова и снова. »"
                        "\nПоверьте, у нас есть всё необходимое. Вашему вниманию самый широкий ассортимент товаров на всём рынке."
                        "\n«Ждём вас за покупками каждый день, мы всегда к вашим услугам!»", textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25.0, color: Colors.black,),
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
