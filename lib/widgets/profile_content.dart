import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/text_button.dart';

class FooterContent extends StatelessWidget {
  const FooterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextNewButton(text: 'FAQs'),
        TextNewButton(text: 'About Us'),
        TextNewButton(text: 'Terms of Use'),
        TextNewButton(text: 'Privacy Policy'),
      ],
    );
  }
}
