import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_hive/constants/assets.dart';
import 'package:trendy_hive/screens/home_screen.dart';

import '../widgets/container_button_modal.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Colors.black,
      //   elevation: 0.0,
      //   centerTitle: true,
      //   title: Text(
      //     'Payment Status',
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //         fontSize: 30.sp,
      //         fontWeight: FontWeight.w700,
      //         color: Colors.black),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.all(16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.success,height: size.height *.4.h, width: size.width,),
                10.verticalSpace,
                Text(
                  'Success!',
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.greenAccent,),
                ),
                15.verticalSpace,
                Text(
                  'Your Order Will be Delivered Soon',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black12,),
                ),
                Text(
                  'Thanks For Choosing our app',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black12,),
                ),

                25.verticalSpace,
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  HomeScreen()),),
                  child: ContainerButtonModal(
                    containerWidth: size.width,
                    containerColor: Colors.redAccent,
                    text: "Continue Shopping",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
