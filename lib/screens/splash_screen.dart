import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_hive/constants/assets.dart';
import 'package:trendy_hive/screens/home_screen.dart';
import 'package:trendy_hive/screens/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  OnBoardingScreen()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage(AppImages.image2),
              fit: BoxFit.cover,
              opacity: 0.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart_rounded,
              color: Colors.redAccent,
              size: 250.spMin,
            ),
            Text(
              'Trendy Hive',
              style: TextStyle(
                fontFamily: 'Roboto-Bold',
                fontSize: 45.sp,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
