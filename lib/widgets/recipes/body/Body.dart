import 'package:flutter/material.dart';
import 'package:miam_miam/widgets/recipes/body/stats/Stats.dart';
import 'package:miam_miam/globals.dart' as g;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: g.getHeight(40.47)),
          Stats(),
          SizedBox(height: g.getHeight(31)),
        ],
      ),
    );
  }
}
