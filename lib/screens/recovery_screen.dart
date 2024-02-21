import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_hive/screens/signup_screen.dart';

import 'home_screen.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.verticalSpace,
              Text(
                'Forgot Password',
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              25.verticalSpace,
              TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.numbers),
                  labelText: "Reset Code",
                  border: OutlineInputBorder(),
                ),
              ),
              25.verticalSpace,
              TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  labelText: "New Password",
                  border: OutlineInputBorder(),
                ),
              ),
              25.verticalSpace,
              TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(),
                ),
              ),
              25.verticalSpace,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.redAccent,
                  minimumSize: Size(MediaQuery.sizeOf(context).width,
                      MediaQuery.of(context).size.height * .08.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                ),
                child: Text(
                  "Reset Password",
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
              20.verticalSpace,
             Align(
               alignment: Alignment.bottomCenter,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text(
                     "OR",
                     style:
                     TextStyle(color: Colors.black54, fontSize: 15.sp),
                   ),
                   10.verticalSpace,
                   TextButton(
                     onPressed: () => Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) => const SignUpScreen(),
                       ),
                     ),
                     child: Text(
                       "Sign Up",
                       style: TextStyle(
                           color: Colors.redAccent, fontSize: 18.sp),
                     ),
                   ),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
