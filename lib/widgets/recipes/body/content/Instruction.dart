import 'package:flutter/material.dart';
import 'package:miam_miam/appColors.dart';
import 'package:miam_miam/globals.dart' as g;

class Instruction extends StatelessWidget {
  final int idx;
  final String instruction;

  Instruction({
    this.idx,
    this.instruction,
  })  : assert(idx != null),
        assert(instruction != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: g.getWidth(342),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: g.getHeight(40),
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text(
                this.idx.toString(),
                style: TextStyle(
                  color: AppColors.lightBlue,
                  fontFamily: 'Soin Sans Neue Bold',
                ),
              ),
            ),
          ),
          SizedBox(width: g.getWidth(12.93)),
          Flexible(
            child: Text(
              this.instruction,
              style: TextStyle(
                color: AppColors.darkGrey.withOpacity(0.50),
                fontFamily: 'Soin Sans Neue Roman',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
