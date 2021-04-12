import 'package:flutter/material.dart';
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

    // print(g.getHeight(44));
    // print(g.getHeight(26));
    // print(g.getHeight(7));
    // print(g.getHeight(11));
    // print(g.getHeight(26) + g.getHeight(7) + g.getHeight(11));

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
              child: Container(),
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
