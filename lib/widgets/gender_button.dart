import 'package:flutter/material.dart';
import 'package:shopping_app/constants/constants.dart';

class GenderButton extends StatelessWidget {
  const GenderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.0,
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: textNewColor)
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              child: Center(child: Text('Female')),
            ),
          ),
          VerticalDivider(
            width: 2.0,
            color: Colors.grey,
          ),
          Flexible(
            flex: 1,
            child: Container(
              child: Center(child: Text('Male')),
            ),
          )
        ],
      ),
    );
  }
}
