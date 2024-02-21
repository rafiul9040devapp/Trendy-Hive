import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';
import 'package:trendy_hive/screens/recovery_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final int _otpCodeLength = 4;
  TextEditingController textEditingController = TextEditingController(text: "");

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(10.r),
    );
  }

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
                'Enter OTP',
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              80.verticalSpace,
              Text(
                'Enter The OTP code that we have sent you to your number, please check your number and enter here OTP to verify',
                style: TextStyle(fontSize: 16.sp, color: Colors.black),
              ),
              30.verticalSpace,
              TextFieldPin(
                textController: textEditingController,
                autoFocus: true,
                codeLength: _otpCodeLength,
                alignment: MainAxisAlignment.center,
                defaultBoxSize: 50.spMin,
                margin: 10.sp,
                selectedBoxSize: 55.spMin,
                textStyle: TextStyle(fontSize: 16.sp,color: Colors.black),
                defaultDecoration: _pinPutDecoration.copyWith(
                    border: Border.all(
                        color:
                            Colors.grey.withOpacity(0.6))),
                selectedDecoration: _pinPutDecoration,
                onChange: (code) {
                  setState(() {});
                },
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
                    builder: (context) => const RecoveryScreen(),
                  ),
                ),
                child: Text(
                  "Verify",
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
