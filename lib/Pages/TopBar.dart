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
    return Container(
      child: Row(
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
              Text(
                "About us",
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      )
    );
  }
}

class MobileTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}