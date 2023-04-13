import 'package:flutter/material.dart';
import 'package:shopping_app/constants/constants.dart';
import 'package:shopping_app/widgets/profile_item.dart';

class ProdileNoLoginPage extends StatelessWidget {
  const ProdileNoLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180.0,
          child: Column(
            children: [
              Container(
                height: 110.0,
                color: bgNewColor,
              ),
              Container(
                height: 70.0,
                color: Colors.white,
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              ProfileItem(),
              ProfileItem(),
              ProfileItem(),
              ProfileItem(),
            ],
          ),
        )
      ],
    );
  }
}
