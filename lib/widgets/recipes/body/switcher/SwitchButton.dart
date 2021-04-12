import 'package:flutter/material.dart';
// import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:miam_miam/appColors.dart';
import 'package:miam_miam/widgets/switcher.dart';

class RecipesSwitcherButton extends StatefulWidget {
  bool isIngredients = false;
  @override
  _RecipesSwitcherButtonState createState() => _RecipesSwitcherButtonState();
}

class _RecipesSwitcherButtonState extends State<RecipesSwitcherButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          this.widget.isIngredients = !this.widget.isIngredients;
        });
      },
      child: Container(
        child: Stack(
          children: <Widget>[
            CustomSwitchButton(
              buttonWidth: 311,
              buttonHeight: 49,
              indicatorWidth: 153,
              indicatorBorderRadius: 22,
              backgroundBorderRadius: 25,
              backgroundColor: AppColors.greyF0,
              unCheckedColor: AppColors.white,
              checkedColor: AppColors.white,
              animationDuration: Duration(milliseconds: 400),
              checked: this.widget.isIngredients,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 14, 0, 0),
              child: Text(
                'Instructions',
                style: TextStyle(
                  color: this.widget.isIngredients
                      ? AppColors.darkGrey
                      : AppColors.lightBlue,
                  fontFamily: 'Soin Sans Neue',
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(200, 14, 0, 0),
              child: Text(
                'Ingredients',
                style: TextStyle(
                  color: this.widget.isIngredients
                      ? AppColors.lightBlue
                      : AppColors.darkGrey,
                  fontFamily: 'Soin Sans Neue',
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
