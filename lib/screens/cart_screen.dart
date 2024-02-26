import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_hive/model/local_product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text(
          'Cart',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.spMax),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: LocalProduct.generateProductList().length,
          itemBuilder: (context, index) {
            LocalProduct product = LocalProduct.generateProductList()[index];
            return Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.h),
              child: ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.redAccent,
                      splashRadius: 10.r,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Image.asset(product.imageUrl,
                          height: screenHeight *.15.h, width: screenWidth * .15.w
                      ),
                    ),
                  ],
                ),

                title: Text(product.title),
                subtitle: Text(product.price,style: TextStyle(color: Colors.redAccent),),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 15.r,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 18.spMax,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    2.verticalSpace,
                    Text(
                      "1",
                      style: TextStyle(
                        fontSize: 18.spMax
                      ),
                    ),
                    2.verticalSpace,
                    CircleAvatar(
                      radius: 15.r,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove,
                          size: 18.spMax,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
