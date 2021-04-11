import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 311),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('1'),
          Column(
            children: <Widget>[
              Container(
                  // constraints: BoxConstraints(minWidth: 100),
                  // child: Text(
                  //     'In a large bowl, sift together the flour, baking powder, salt and sugar. Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.'),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
