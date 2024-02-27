import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_hive/constants/assets.dart';
import 'package:trendy_hive/screens/payment_screen.dart';
import 'package:trendy_hive/screens/payment_success_screen.dart';
import 'package:trendy_hive/screens/shipping_address_screen.dart';

import '../widgets/container_button_modal.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Order Confirm',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              15.verticalSpace,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Shipping Address',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              10.verticalSpace,
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Container(
                  height: size.height * .2.h,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 4.r,
                        blurRadius: 2.r,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Dear Pro',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              TextButton(
                                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ShippingAddressScreen())) ,
                                child: Text(
                                  'Change',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          5.verticalSpace,
                          Text(
                            '1234 Elm Avenue, Apartment 5B, Springfield,',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          Text(
                            'State: Illinois, Postal Code: 62701, Country: United States',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              15.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Method',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen())),
                    child: Text(
                      'Change',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ],
              ),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Image.asset(
                        AppImages.master,
                        height: size.height * .1.h,
                        width: size.width * .1.w,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Text(
                      '**** **** **** 3947 ',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              10.verticalSpace,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Delivery Method',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2.r,
                                blurRadius: 2.r,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                AppImages.icon3,
                                height: size.height * .1.h,
                                width: size.width * .1.w,
                              ),
                              Text(
                                '2-7 Days',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2.r,
                                blurRadius: 2.r,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                AppImages.ups,
                                height: size.height * .1.h,
                                width: size.width * .1.w,
                              ),
                              Text(
                                '2-7 Days',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sub-Total: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.spMax,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "\$300.0",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.spMax,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shipping Fee: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.spMax,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "\$150.0",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.spMax,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Payment: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.spMax,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "\$450.0",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.spMax,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
              25.verticalSpace,
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentSuccessScreen()),),
                child: ContainerButtonModal(
                  containerWidth: size.width,
                  containerColor: Colors.redAccent,
                  text: "Confirm Order",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
