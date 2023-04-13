import 'package:flutter/material.dart';
import 'package:shopping_app/constants/constants.dart';
import 'package:shopping_app/screens/profile_no_login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scNewColor,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'Profile',
          style: Theme.of(context).textTheme.headline6 ,),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          child: ProdileNoLoginPage()
      ),
    );
  }
}
