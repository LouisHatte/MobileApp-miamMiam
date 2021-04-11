import 'package:flutter/material.dart';
import 'package:miam_miam/appColors.dart';
import 'package:miam_miam/globals.dart' as g;

class BottomNavBarButton extends StatelessWidget {
  double containerWidth;
  double containerHeight;
  String imageAsset;
  double imageWidth;
  double imageHeight;
  double sizedBoxHeight;
  double textHeight;

  BottomNavBarButton({
    this.containerWidth,
    this.containerHeight,
    this.imageAsset,
    this.imageWidth,
    this.imageHeight,
    this.sizedBoxHeight,
  })  : assert(containerWidth != null),
        assert(containerHeight != null),
        assert(imageAsset != null),
        assert(imageWidth != null),
        assert(imageHeight != null),
        assert(sizedBoxHeight != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: g.getWidth(this.containerWidth),
      height: g.getHeight(this.containerHeight),
      child: Column(
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
