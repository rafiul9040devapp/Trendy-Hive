import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'otp_verification_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              Text(
                'Please Enter your mobile number. You will receive an OTP  to create or set a new passoword via email',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
              25.verticalSpace,
              TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: "Enter Number",
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
                    builder: (context) => const OtpVerificationScreen(),
                  ),
                ),
                child: Text(
                  "Send Code",
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
