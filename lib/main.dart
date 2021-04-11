import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:miam_miam/widgets/Stat.dart';
import './widgets/gobackButton.dart';
import './widgets/menuButton.dart';
import 'widgets/appTitle.dart';

import './appColors.dart';

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
        fontFamily: 'Soin Sans Neue',
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyF0,
      body: Center(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 420,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/pancakes.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GobackButton(),
                      SizedBox(width: 100),
                      MenuButton(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 370),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppTitle(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Stat('assets/images/heart.png', 85, 'likes'),
                Stat('assets/images/calories.png', 451, 'kcal'),
                Stat('assets/images/timer.png', 19, 'mins'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
