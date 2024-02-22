import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_hive/constants/assets.dart';
import 'package:trendy_hive/model/local_product.dart';

class HomeScreen extends StatelessWidget {
  List<String> tabs = ['All', 'Top', 'Category', 'Recommended','Popular','Watch'];

  HomeScreen({super.key});

  // List<String> imageList = [AppImages.image1,AppImages.image2,AppImages.image3,AppImages.image4];
  // List<String> productTitles = ["Warm Zipper","Knitted Woo!","Zipper Win","Child Win"];
  // List<String> price = ["\$300","\$650","\$500","\$400"];
  // List<String> reviews = ["54","120","541","535"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Container(
                          height: MediaQuery.of(context).size.height * .05.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            shape: BoxShape.rectangle,
                            color: Colors.black12.withOpacity(.05),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2.r,
                                  spreadRadius: 1.r),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: Center(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.redAccent,
                                    size: 25.spMax,
                                  ),
                                  border: InputBorder.none,
                                  label: const Text(
                                    "Find Your Product",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Container(
                          height: MediaQuery.of(context).size.height * .05.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            shape: BoxShape.rectangle,
                            color: Colors.black12.withOpacity(.05),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2.r,
                                  spreadRadius: 1.r),
                            ],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.notifications_active,
                              color: Colors.redAccent,
                              size: 25.spMax,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .15.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF0DD),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20.r),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2.r,
                            spreadRadius: 1.r),
                      ],
                    ),
                    child: FittedBox(child: Image.asset(AppImages.freed)),
                  ),
                ),
                20.verticalSpace,
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: tabs.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        child: Container(
                          height: 35.h,
                          margin: EdgeInsets.all(10.sp),
                          padding: EdgeInsets.only(left: 16.w,right: 16.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.black12.withOpacity(.05),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2.r,
                                  spreadRadius: 1.r),
                            ],
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Padding(
                                padding: EdgeInsets.all(4.spMax),
                                child: Text(
                                  tabs[index],
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18.sp),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                20.verticalSpace,
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height *.3.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: LocalProduct.generateProductList().length,
                    itemBuilder: (context,index){
                      LocalProduct product = LocalProduct.generateProductList()[index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Padding(
                              padding:  EdgeInsets.only(right: 16.w),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height *.15.h,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20.r),
                                      child: Image.asset(product.imageUrl),
                                    ),
                                    Positioned(
                                      right: 5.w,
                                      top:5.h,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 10.r,
                                        child: Center(child: Icon(Icons.favorite,color: Colors.redAccent,size: 15.spMax,)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          10.verticalSpace,
                          Padding(
                            padding:  EdgeInsets.only(right: 16.w),
                            child: Column(

                              children: [
                                Text(product.title,style: TextStyle(fontSize: 15.spMin,fontWeight: FontWeight.w400,color: Colors.black),),
                                Text(product.price,style: TextStyle(fontSize: 15.spMin,fontWeight: FontWeight.w400,color: Colors.black),),
                              ],
                            ),
                          )
                        ],
                      );
                    },
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
