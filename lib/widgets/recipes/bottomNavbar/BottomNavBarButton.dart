import 'package:flutter/material.dart';
import 'package:miam_miam/appColors.dart';
import 'package:miam_miam/globals.dart' as g;

class BottomNavBarButton extends StatelessWidget {
  final double containerWidth;
  final double containerHeight;
  final String imageAsset;
  final double imageWidth;
  final double imageHeight;
  final double sizedBoxHeight;
  final double textHeight;
  final Function callBack;

  BottomNavBarButton({
    this.containerWidth,
    this.containerHeight,
    this.imageAsset,
    this.imageWidth,
    this.imageHeight,
    this.sizedBoxHeight,
    this.textHeight,
    this.callBack,
  })  : assert(containerWidth != null),
        assert(containerHeight != null),
        assert(imageAsset != null),
        assert(imageWidth != null),
        assert(imageHeight != null),
        assert(sizedBoxHeight != null),
        assert(callBack != null);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          Size(
            g.getWidth(this.containerWidth),
            g.getHeight(this.containerHeight),
          ),
        ),
      ),
      onPressed: callBack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            this.imageAsset,
            width: g.getWidth(this.imageWidth),
            height: g.getHeight(this.imageHeight),
          ),
          SizedBox(height: g.getHeight(this.sizedBoxHeight)),
          Container(
            height: g.getHeight(11),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Profile',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontFamily: 'Soin Sans Neue Medium',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
