import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:trendy_hive/constants/assets.dart';
import 'package:trendy_hive/screens/home_screen.dart';
import 'package:trendy_hive/screens/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w700,color: Colors.black.withOpacity(.5)),
        bodyTextStyle: TextStyle(fontSize: 18.sp,color: Colors.black54),
        bodyPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero);

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Shop Now",
          body:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
          image: Image.asset(
            AppImages.splash1,
            width: 200.w,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Big Discount",
          body:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
          image: Image.asset(
            AppImages.splash2,
            width: 200.w,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Free Delivery",
          body:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
          image: Image.asset(
            AppImages.splash3,
            width: 200.w,
          ),
          decoration: pageDecoration,
          footer: Padding(
            padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 16.w),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.redAccent,
                minimumSize: Size(MediaQuery.sizeOf(context).width,
                    MediaQuery.of(context).size.height * .05.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              ),
              child: Text(
                "Let's Shop",
                style: TextStyle(fontSize: 18.sp),
              ),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text(
        'BACK',
        style: TextStyle(
          color: Colors.redAccent,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      next: Text(
        'NEXT',
        style: TextStyle(
          color: Colors.redAccent,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      skip: Text(
        'SKIP',
        style: TextStyle(
          color: Colors.redAccent,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      done: Text(
        'Done',
        style: TextStyle(
          color: Colors.redAccent,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: Size.square(10.r),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        color: Colors.black26,
        activeColor: Colors.redAccent,
        spacing: EdgeInsets.symmetric(vertical: 0.h, horizontal: 3.w),
      ),
    );
  }
}
