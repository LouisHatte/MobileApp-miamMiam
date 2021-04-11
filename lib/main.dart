import 'package:flutter/material.dart';
import 'appColors.dart';
import './widgets/gobackButton.dart';
import './widgets/menuButton.dart';

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
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/pancakes.png'),
              GobackButton(),
              MenuButton(),
              Container(
                child: Text(
                  'Colorful pancakes',
                  style: TextStyle(
                    color: AppColors.darkBlue.withOpacity(1),
                    fontFamily: 'Soin Sans Neue',
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
