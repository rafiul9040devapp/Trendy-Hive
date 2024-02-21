import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_screen.dart';

class ForgotPassWordScreen extends StatefulWidget {
  const ForgotPassWordScreen({super.key});

  @override
  State<ForgotPassWordScreen> createState() => _ForgotPassWordScreenState();
}

class _ForgotPassWordScreenState extends State<ForgotPassWordScreen> {
  bool clearButton = false;
  final TextEditingController _emailTEController = TextEditingController();

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
                'Please Enter your email address. You will receive a link to create or set a new passoword via email',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
              25.verticalSpace,
              TextFormField(
                controller: _emailTEController,
                style: const TextStyle(color: Colors.black),
                onChanged: (value) {
                  if (value != "") {
                    clearButton = true;
                    setState(() {});
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        _emailTEController.clear();
                      });
                    },
                    icon: const Icon(
                      CupertinoIcons.multiply,
                      color: Colors.redAccent,
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
