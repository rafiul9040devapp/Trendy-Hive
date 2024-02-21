import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_hive/screens/login_screen.dart';

import '../constants/assets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              50.verticalSpace,
              Image.asset(AppImages.freed),
              20.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 15.w),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Enter Name"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    20.verticalSpace,
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Enter Email"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    20.verticalSpace,
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Enter Mobile Number"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                    20.verticalSpace,
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text("Enter Password"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    20.verticalSpace,
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text("Confirm Password"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
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
                          builder: (context) => const LoginScreen(),
                        ),
                      ),
                      child: Text(
                        "Create Account",
                        style: TextStyle(fontSize: 18.sp),
                      ),
                    ),
                    20.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already Have an Account?",
                          style:
                          TextStyle(color: Colors.black54, fontSize: 15.sp),
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          ),
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                color: Colors.redAccent, fontSize: 18.sp),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
