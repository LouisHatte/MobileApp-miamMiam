import 'package:flutter/material.dart';
import 'package:miam_miam/widgets/recipes/body/content/Instructions.dart';
import 'package:miam_miam/widgets/recipes/body/stats/Stats.dart';
import 'package:miam_miam/globals.dart' as g;
import 'package:miam_miam/widgets/recipes/body/switcher/SwitchButton.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isInstructions = false;

  void _toggleContent() {
    print('Hello');
    setState(() {
      _isInstructions = !_isInstructions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: g.getHeight(40.47)),
          Stats(),
          SizedBox(height: g.getHeight(31)),
          SwitchButton(
            isOk: _isInstructions,
            callBack: _toggleContent,
          ),
          SizedBox(height: g.getHeight(13)),
          !_isInstructions ? Instructions() : Text('B'),
        ],
      ),
    );
  }
}
