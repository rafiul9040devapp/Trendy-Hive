import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_hive/constants/assets.dart';
import 'package:trendy_hive/screens/forgot_password_screen.dart';
import 'package:trendy_hive/screens/signup_screen.dart';

import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              80.verticalSpace,
              Image.asset(AppImages.freed),
              20.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 15.w),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Enter Email"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.h),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPassWordScreen(),
                            ),
                          ),
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                                color: Colors.redAccent, fontSize: 18.sp),
                          ),
                        ),
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
                        "Log In",
                        style: TextStyle(fontSize: 18.sp),
                      ),
                    ),
                    20.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have an Account?",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15.sp),
                        ),
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
