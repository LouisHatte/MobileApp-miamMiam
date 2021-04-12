import 'package:flutter/material.dart';
import 'package:miam_miam/widgets/recipes/topImage/recipeTitle.dart';
import 'package:miam_miam/globals.dart' as g;
import 'package:miam_miam/widgets/recipes/topImage/simpleButton.dart';

class TopImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/pancakes.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(height: g.getHeight(55)),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SimpleButton(
                    icon: Icons.arrow_back_ios_rounded,
                    heightIcon: 5.63,
                    callBack: () => {print('A')},
                  ),
                  SizedBox(width: g.getWidth(288)),
                  SimpleButton(
                    icon: Icons.menu_rounded,
                    heightIcon: 13.59,
                    callBack: () => {print('B')},
                  ),
                ],
              ),
            ),
            SizedBox(height: g.getHeight(270)),
            RecipeTitle(),
          ],
        )
      ],
    );
  }
}
