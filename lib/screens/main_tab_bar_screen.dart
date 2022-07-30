import 'package:banking/constants/color_constants.dart';
import 'package:banking/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_screen/card_screen.dart';

class MainTabBarScreen extends StatefulWidget {
  const MainTabBarScreen({Key? key}) : super(key: key);

  @override
  State<MainTabBarScreen> createState() => _MainTabBarScreenState();
}

class _MainTabBarScreenState extends State<MainTabBarScreen> {
  int _selectedIndex = 0;

  static const List <Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CardScreen(),
    HomeScreen(),
    CardScreen(),
  ];

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: bottomNavBarBuilder(),
    );
  }

  BottomNavigationBar bottomNavBarBuilder() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.house), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.creditCard), label: 'Cards'),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.gear), label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.chartBar), label: 'Overview'),
      ],
    );
  }
}