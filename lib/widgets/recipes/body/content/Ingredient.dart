import 'package:flutter/material.dart';
import 'package:miam_miam/appColors.dart';
import 'package:miam_miam/globals.dart' as g;

class Ingredient extends StatelessWidget {
  final String ingredient;

  Ingredient({
    this.ingredient,
  }) : assert(ingredient != null);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: g.getWidth(342),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: g.getWidth(57.97)),
              Container(
                height: g.getHeight(10),
                width: g.getWidth(10),
                decoration: BoxDecoration(
                  color: AppColors.lightBlue,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: g.getWidth(10.93)),
              Flexible(
                child: Text(
                  this.ingredient,
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontFamily: 'Soin Sans Neue Medium',
                      fontSize: g.getHeight(22)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
