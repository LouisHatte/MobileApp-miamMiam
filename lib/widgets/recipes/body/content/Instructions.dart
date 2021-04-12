import 'package:flutter/material.dart';
import 'package:miam_miam/widgets/recipes/body/content/Instruction.dart';
import 'package:miam_miam/data.dart' as d;
import 'package:miam_miam/globals.dart' as g;

class Instructions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: g.getHeight(26)),
        Instruction(
          idx: 1,
          instruction: d.firstInstruction,
        ),
        SizedBox(height: g.getHeight(50)),
        Instruction(
          idx: 2,
          instruction: d.secondInstruction,
        ),
      ],
    );
  }
}
