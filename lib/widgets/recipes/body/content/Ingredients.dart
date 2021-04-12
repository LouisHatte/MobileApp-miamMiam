import 'package:flutter/material.dart';
import 'package:miam_miam/widgets/recipes/body/content/Ingredient.dart';
import 'package:miam_miam/data.dart' as d;
import 'package:miam_miam/globals.dart' as g;

class Ingredients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: g.getHeight(26)),
        Ingredient(ingredient: d.ingredient1),
        SizedBox(height: g.getHeight(13)),
        Ingredient(ingredient: d.ingredient2),
        SizedBox(height: g.getHeight(13)),
        Ingredient(ingredient: d.ingredient3),
        SizedBox(height: g.getHeight(13)),
        Ingredient(ingredient: d.ingredient4),
        SizedBox(height: g.getHeight(13)),
        Ingredient(ingredient: d.ingredient5),
        SizedBox(height: g.getHeight(13)),
        Ingredient(ingredient: d.ingredient6),
        SizedBox(height: g.getHeight(13)),
        Ingredient(ingredient: d.ingredient7),
      ],
    );
  }
}
