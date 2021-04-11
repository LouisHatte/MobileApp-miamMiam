import 'package:flutter/material.dart';
import '../appColors.dart';

class AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Colorful pancakes',
      style: TextStyle(
        color: AppColors.darkBlue.withOpacity(1),
        fontFamily: 'Soin Sans Neue',
        fontWeight: FontWeight.bold,
        fontSize: 33,
      ),
    );
  }
}
