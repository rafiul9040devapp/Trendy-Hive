import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_hive/model/local_product.dart';

import '../widgets/product_details_popup.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      //   foregroundColor: Colors.black,
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back_ios_new,size: 25.spMin,color: Colors.black,),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              children: [
                FanCarouselImageSlider(
                  imagesLink: LocalProduct.imageList,
                  isAssets: true,
                  autoPlay: true,
                  sliderHeight: screenHeight * .5.h,
                ),
                10.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Warm Zipper",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Hoodie Jacket",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "\$300",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
                10.verticalSpace,
                Align(
                  alignment: Alignment.centerLeft,
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                10.verticalSpace,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Stay warm and stylish in our cozy hoodie jacket, perfect for chilly days and casual outings. "
                    "\nElevate your street wear game with our premium hoodie jacket, featuring a sleek design and comfortable fit."
                    "\nEmbrace comfort and versatility with our must-have hoodie jacket, crafted from soft fabric and finished with trendy details.",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                20.verticalSpace,
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Icon(
                          Icons.shopping_cart,
                          size:  35.spMax,
                          color: Colors.redAccent,
                        ),
                      ),
                      15.horizontalSpace,
                      Flexible(
                        flex: 4,
                        child:ProductDetailsPopUp()
                      ),
                    ],
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
