import 'package:flutter/material.dart';

class SolidButton extends StatelessWidget {
  const SolidButton({Key? key, required this.text, required this.onPressed, required this.minusWidth}) : super(key: key);
  final String text;
  final Function() onPressed;
  final num minusWidth;

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)
        ),
        onPressed: onPressed,
        child: Container(
            height: 40.0,
            width: MediaQuery.of(context).size.width - minusWidth,
            child: Center(child: Text(text))
        )
    );
  }
}
