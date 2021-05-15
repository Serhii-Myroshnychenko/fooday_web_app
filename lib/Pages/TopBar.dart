import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopTopBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopTopBar();
        } else {
          return MobileTopBar();
        }
      }
    );
  }
}

class DesktopTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "FooDay",
              style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
              ),
            Row(
              children: <Widget>[
                Text(
                  "Assortment",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About us",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}

class MobileTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}