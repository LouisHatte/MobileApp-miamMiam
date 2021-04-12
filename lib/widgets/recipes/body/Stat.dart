import 'package:flutter/material.dart';
import 'package:miam_miam/appColors.dart';

class Stat extends StatelessWidget {
  Stat(this.logo, this.nb, this.text);

  final String logo;
  final int nb;
  final String text;

  @override
  Widget build(BuildContext context) {
    print(this.logo);
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(this.logo, width: 17.97, height: 15.99),
            SizedBox(height: 3),
            Row(
              children: <Widget>[
                Text(
                  this.nb.toString(),
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontFamily: 'Soin Sans Neue',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(width: 3),
                Text(
                  this.text,
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontFamily: 'Soin Sans Neue',
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
