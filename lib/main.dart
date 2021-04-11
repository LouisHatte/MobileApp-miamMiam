import 'package:flutter/material.dart';
import 'globals.dart' as g;
import 'package:miam_miam/widgets/Instructions.dart';
import 'package:miam_miam/widgets/recipes/bottomNavbar/BottomNavbar.dart';
import 'package:miam_miam/widgets/Stat.dart';
import 'package:miam_miam/widgets/SwitchButton.dart';
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

    print(g.getHeight(44));
    print(g.getHeight(26));
    print(g.getHeight(7));
    print(g.getHeight(11));
    print(g.getHeight(26) + g.getHeight(7) + g.getHeight(11));

    return Scaffold(
      body: Container(
        width: g.screenWidth,
        height: g.screenHeight,
        child: Column(
          children: <Widget>[
            Container(height: g.getHeight(420)),
            Expanded(
              child: Container(),
            ),
            Container(
              height: g.getHeight(93),
              child: Center(
                child: BottomNavbar(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Scaffold(
//       backgroundColor: AppColors.greyF0,
//       body: Container(
//         child: Center(
//           child: Column(
//             children: <Widget>[
//               Stack(
//                 children: <Widget>[
//                   Container(
//                     height: 420,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage('assets/images/pancakes.png'),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(top: 55),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: <Widget>[
//                         GobackButton(),
//                         SizedBox(width: 100),
//                         MenuButton(),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(top: 370),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         AppTitle(),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   Stat('assets/images/heart.png', 85, 'likes'),
//                   Stat('assets/images/calories.png', 451, 'kcal'),
//                   Stat('assets/images/timer.png', 19, 'mins'),
//                 ],
//               ),
//               SizedBox(height: 10),
//               RecipesSwitcherButton(),
//               true ? Instructions() : Container(),
//             ],
//           ),
//         ),
//       ),
//       bottomSheet: Navbar(),
//     );
