import 'package:flutter/material.dart';
import '../../../appColors.dart';
import 'package:miam_miam/globals.dart' as g;

class RecipeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: g.getHeight(33),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          'Colorful pancakes',
          style: TextStyle(
            color: AppColors.darkBlue,
            fontFamily: 'Soin Sans Neue Bold',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
