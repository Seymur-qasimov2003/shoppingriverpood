import 'package:app1/view/card.dart';
import 'package:app1/view/productdetails.dart';
import 'package:app1/view/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'home.dart';

class BottomBar extends ConsumerStatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends ConsumerState<BottomBar> {
  final pages = [
    Home(),
    ProductDetails(),
    CardPage(),
    Home(),
  ];
  int _selectedIndex = 0;
  late AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons.home,
          Icons.category,
          Icons.shopping_cart,
          Icons.person,
        ],
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        activeColor: Colors.orange,
        splashColor: Colors.green,
        splashSpeedInMilliseconds: 300,
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
    );
  }
}

// Path: lib\view\home.dart
// Compare this snippet from lib\view\splash.dart:
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'home.dart';
//
// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);
//
//   @override
//   State<Splash> createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     Future.delayed(const Duration(seconds: 4), () {
//       Navigator.of(context).push(MaterialPageRoute(
//         builder: (context) => const Home(),
//       ));
//     });
