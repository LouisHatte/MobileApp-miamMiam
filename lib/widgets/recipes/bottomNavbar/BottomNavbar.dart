import 'package:flutter/material.dart';
import 'package:miam_miam/globals.dart' as g;
import 'package:miam_miam/widgets/recipes/bottomNavbar/BottomNavBarButton.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        BottomNavBarButton(
          containerWidth: 49,
          containerHeight: 43,
          imageAsset: 'assets/images/group.png',
          imageWidth: 25.86,
          imageHeight: 25.92,
          sizedBoxHeight: 6.08,
          callBack: () => {print('C')},
        ),
        BottomNavBarButton(
          containerWidth: 41,
          containerHeight: 43.29,
          imageAsset: 'assets/images/kettlebell.png',
          imageWidth: 20.95,
          imageHeight: 25.45,
          sizedBoxHeight: 6.84,
          callBack: () => {print('D')},
        ),
        TextButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(
              Size(
                g.getWidth(g.getWidth(52.76)),
                g.getHeight(g.getHeight(57.38)),
              ),
            ),
          ),
          onPressed: () => {print('E')},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/add.png',
                width: g.getWidth(52.76),
                height: g.getHeight(52.76),
              ),
              SizedBox(height: g.getHeight(4.62))
            ],
          ),
        ),
        BottomNavBarButton(
          containerWidth: 34,
          containerHeight: 42.66,
          imageAsset: 'assets/images/book.png',
          imageWidth: 20.55,
          imageHeight: 25.31,
          sizedBoxHeight: 6.34,
          callBack: () => {print('F')},
        ),
        BottomNavBarButton(
          containerWidth: 29,
          containerHeight: 44,
          imageAsset: 'assets/images/julianWan.png',
          imageWidth: 26,
          imageHeight: 26,
          sizedBoxHeight: 7,
          callBack: () => {print('G')},
        ),
      ],
    );
  }
}
