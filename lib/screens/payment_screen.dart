import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_hive/model/payment_service.dart';
import 'package:trendy_hive/screens/shipping_address_screen.dart';
import 'package:trendy_hive/widgets/container_button_modal.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _type = 1;

  @override
  void initState() {
    super.initState();
  }

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
          'Payment Method',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.w),
            child: Column(
              children: [
                10.verticalSpace,
                SizedBox(
                  height: size.height * .6.h,
                  width: size.width,
                  child: ListView.builder(
                    itemCount: PaymentService.paymentServiceList.length,
                    itemBuilder: (context, index) {
                      PaymentService paymentService =
                          PaymentService.paymentServiceList[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 4.w),
                        child: Container(
                          width: size.width,
                          height: 60.h,
                          decoration: BoxDecoration(
                            border: _type == index + 1
                                ? Border.all(
                                    width: 1.w, color: Colors.redAccent)
                                : Border.all(width: .3.w, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.transparent,
                          ),
                          child: ListTile(
                            leading: Radio(
                              value: index + 1,
                              groupValue: _type,
                              onChanged: (value) {
                                setState(() {
                                  _type = value as int;
                                });
                              },
                              activeColor: Colors.redAccent,
                            ),
                            title: Text(
                              paymentService.serviceName,
                              style: _type == index + 1
                                  ? TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.spMax,
                                      color: Colors.black)
                                  : TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.spMax,
                                      color: Colors.grey),
                            ),
                            trailing: Image.asset(
                              paymentService.serviceImage,
                              width: size.width * .25.w,
                              height: size.height * .25.h,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
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
                20.verticalSpace,
                Divider(
                  height: 5.h,
                  color: Colors.grey.shade400,
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
                          builder: (context) => const ShippingAddressScreen()),),
                  child: ContainerButtonModal(
                    containerWidth: size.width,
                    containerColor: Colors.redAccent,
                    text: "Confirm Payment",
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
