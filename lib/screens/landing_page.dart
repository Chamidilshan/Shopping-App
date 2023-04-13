import 'package:flutter/material.dart';
import 'package:shopping_app/screens/category_page.dart';
import 'package:shopping_app/screens/home_page.dart';
import 'package:shopping_app/screens/profile_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  int indexNew = 0;
  List<Widget> pages = [HomePage(),CategoryPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontSize: 14.0
        ),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/logo-black.png', width: 25.0, color: currentIndex==0? Colors.pinkAccent : Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/categories.png', width: 25.0,color: currentIndex==1? Colors.pinkAccent : Colors.black ),
            label: 'Category'
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/profile.png', width: 25.0, color: currentIndex==2? Colors.pinkAccent : Colors.black),
              label: 'Profile'
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
