import 'package:flutter/material.dart';
import 'package:miam_miam/widgets/recipes/body/stats/Stat.dart';

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stat(
          image: 'assets/images/heart.png',
          imageWidth: 17.97,
          imageHeight: 15.99,
          nb: 85,
          text: 'likes',
        ),
        Stat(
          image: 'assets/images/calories.png',
          imageWidth: 12.56,
          imageHeight: 15.99,
          nb: 451,
          text: 'kcal',
        ),
        Stat(
          image: 'assets/images/timer.png',
          imageWidth: 13.51,
          imageHeight: 15.99,
          nb: 19,
          text: 'mins',
        ),
      ],
    );
  }
}
