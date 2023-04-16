import 'package:flutter/material.dart';
import 'package:shopping_app/screens/register.dart';
import 'package:shopping_app/widgets/login_bottomsheet.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Register(),
      ),
    );
  }
}
