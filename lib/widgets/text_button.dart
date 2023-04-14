import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/widgets/login_bottomsheet.dart';

class TextNewButton extends StatelessWidget {
  const TextNewButton({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 60.0),
        width: MediaQuery.of(context).size.width,
        child: Text(text, style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w200,
        ),),
      ),
    );
  }
}
