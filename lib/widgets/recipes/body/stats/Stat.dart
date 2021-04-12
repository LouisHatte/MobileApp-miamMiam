import 'package:flutter/material.dart';
import 'package:miam_miam/appColors.dart';
import 'package:miam_miam/globals.dart' as g;

class Stat extends StatelessWidget {
  final String image;
  final double imageWidth;
  final double imageHeight;
  final int nb;
  final String text;

  Stat({
    this.image,
    this.imageWidth,
    this.imageHeight,
    this.nb,
    this.text,
  })  : assert(image != null),
        assert(imageWidth != null),
        assert(imageHeight != null),
        assert(nb != null),
        assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          this.image,
          width: g.getWidth(this.imageWidth),
          height: g.getHeight(this.imageHeight),
        ),
        SizedBox(height: g.getHeight(4.54)),
        Row(
          children: <Widget>[
            Container(
              height: g.getHeight(31),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  this.nb.toString(),
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontFamily: 'Soin Sans Neue Bold',
                  ),
                ),
              ),
            ),
            SizedBox(width: g.getWidth(5)),
            Container(
              height: g.getHeight(16),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  this.text,
                  style: TextStyle(
                    color: AppColors.darkGrey.withOpacity(0.79),
                    fontFamily: 'Soin Sans Neue Roman',
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
