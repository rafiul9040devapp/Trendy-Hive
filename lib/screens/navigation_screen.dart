import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_hive/screens/home_screen.dart';
import 'package:trendy_hive/screens/profile_screen.dart';

import 'cart_screen.dart';
import 'favorite_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),

      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          onPressed: (){},
          elevation: 2.spMin,
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
          child: Icon(Icons.qr_code_2_rounded,size: 25.spMin),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.person,
        ],
        inactiveColor: Colors.black.withOpacity(0.5),
        activeColor: Colors.redAccent ,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10.r,
        iconSize: 25.spMin,
        rightCornerRadius: 10.r,
        elevation: 0,
        activeIndex: pageIndex,
        onTap: (index) {
          pageIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
