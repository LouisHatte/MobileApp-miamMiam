import 'package:flutter/material.dart';
import 'package:miam_miam/appColors.dart';
import 'package:miam_miam/widgets/recipes/body/switcher/SwitcherLibraryModified.dart';
import 'package:miam_miam/globals.dart' as g;

class SwitchButton extends StatelessWidget {
  final bool isOk;
  final Function callBack;

  SwitchButton({
    this.isOk,
    this.callBack,
  })  : assert(isOk != null),
        assert(callBack != null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => this.callBack(),
      child: Container(
        child: Stack(
          children: <Widget>[
            Center(
              child: CustomSwitchButton(
                buttonWidth: g.getWidth(311),
                buttonHeight: g.getHeight(49),
                indicatorWidth: g.getWidth(153),
                indicatorBorderRadius: g.getHeight(22),
                backgroundBorderRadius: g.getHeight(25),
                backgroundColor: AppColors.greyF0,
                unCheckedColor: AppColors.white,
                checkedColor: AppColors.white,
                animationDuration: Duration(milliseconds: 400),
                checked: this.isOk,
              ),
            ),
            Column(
              children: [
                SizedBox(height: g.getHeight(18)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: g.getHeight(16),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Instructions',
                          style: TextStyle(
                            color: this.isOk
                                ? AppColors.darkBlue
                                : AppColors.lightBlue,
                            fontFamily: 'Soin Sans Neue Medium',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: g.getHeight(71)),
                    Container(
                      height: g.getHeight(16),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Ingredients',
                          style: TextStyle(
                            color: this.isOk
                                ? AppColors.lightBlue
                                : AppColors.darkBlue,
                            fontFamily: 'Soin Sans Neue Medium',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
