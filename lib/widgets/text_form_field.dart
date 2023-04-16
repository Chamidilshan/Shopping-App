import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TextFormFieldNew extends StatelessWidget {
  const TextFormFieldNew({Key? key, required this.labelText,  this.validator, this.prefixIcon, this.textEditingController}) : super(key: key);
  final String labelText;
  final String? Function(String? value)? validator;
  final Widget? prefixIcon;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        //controller: loginController.loginEditingController,
        controller: textEditingController,
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: Colors.black,
          fontSize: 12.0,
        ),
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
            labelText: labelText,
            labelStyle:  TextStyle(
              color: Colors.black54,
              fontSize: 12.0,
            ),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                width: 1.0,
                color: textNewColor
            )),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                width: 2.0,
                color: Colors.black54
            )),
            errorBorder: OutlineInputBorder(borderSide: BorderSide(
                width: 1.0,
                color: Colors.red
            )),
            focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(
                width: 1.0,
                color: Colors.red
            ))
        ),
      ),
    );
  }
}
