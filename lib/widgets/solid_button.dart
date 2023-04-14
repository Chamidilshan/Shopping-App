import 'package:flutter/material.dart';

class SolidButton extends StatelessWidget {
  const SolidButton({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)
        ),
        onPressed: () {},
        child: Container(
            height: 40.0,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Text(text))
        )
    );
  }
}
