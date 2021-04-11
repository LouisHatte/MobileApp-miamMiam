import 'package:flutter/material.dart';
import '../appColors.dart';

class GobackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 43,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppColors.grey14,
            offset: Offset(0, 3),
            blurRadius: 30,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(43, 43),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          primary: AppColors.white,
        ),
        onPressed: () => print('Go Back.'),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Icon(
            Icons.arrow_back_ios_rounded,
            size: 24, // icon size not exactly the same
            color: AppColors.darkBlue,
          ),
        ),
      ),
    );
  }
}
