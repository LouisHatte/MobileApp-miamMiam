import 'package:flutter/material.dart';
import 'package:miam_miam/widgets/recipes/body/Body.dart';
import 'package:miam_miam/widgets/recipes/topImage/topImage.dart';
import 'globals.dart' as g;
import 'package:miam_miam/widgets/recipes/bottomNavbar/BottomNavbar.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Miam Miam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Soin Sans Neue Roman',
      ),
      home: Recipes(),
    );
  }
}

class Recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    g.screenWidth = MediaQuery.of(context).size.width;
    g.screenHeight = MediaQuery.of(context).size.height;

    // g.screenWidth = 414;
    // g.screenHeight = 978;

    return Scaffold(
      body: Container(
        width: g.screenWidth,
        height: g.screenHeight,
        child: Column(
          children: <Widget>[
            Container(
              height: g.getHeight(420),
              child: TopImage(),
            ),
            Expanded(
              child: Body(),
            ),
            Container(
              height: g.getHeight(93),
              child: BottomNavbar(),
            ),
          ],
        ),
      ),
    );
  }
}
