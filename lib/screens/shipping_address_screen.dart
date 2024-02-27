import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_hive/screens/order_confirm_screen.dart';
import 'package:trendy_hive/widgets/container_button_modal.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

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
          'Shipping Address',
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
            padding:  EdgeInsets.all(8.w),
            child: Column(
              children: [
                30.verticalSpace,
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Full Name",
                  ),
                ),
                15.verticalSpace,
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Mobile Number",
                  ),
                ),
                15.verticalSpace,
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Address",
                  ),
                ),
                15.verticalSpace,
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "City",
                  ),
                ),
                15.verticalSpace,
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "State/Province/Region",
                  ),
                ),
                15.verticalSpace,
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Zip Code (Postal Code)",
                  ),
                ),
                15.verticalSpace,
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Country",
                  ),
                ),
                25.verticalSpace,
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderConfirmScreen()  )),
                  child: ContainerButtonModal(
                    containerColor: Colors.redAccent,
                    containerWidth: size.width,
                    text: "Add Address",
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
