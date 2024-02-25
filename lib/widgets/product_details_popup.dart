import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'container_button_modal.dart';

class ProductDetailsPopUp extends StatelessWidget {
  const ProductDetailsPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final popUpTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
    );

    final List<Color> colorList = [
      Colors.red,
      Colors.green,
      Colors.indigo,
      Colors.amber
    ];

    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            height: screenHeight * .35.h,
            width: screenWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          "Size: ",
                          style: popUpTextStyle,
                        ),
                        10.verticalSpace,
                        Text(
                          "Color: ",
                          style: popUpTextStyle,
                        ),
                        10.verticalSpace,
                        Text(
                          "Total: ",
                          style: popUpTextStyle,
                        ),
                        10.verticalSpace,
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Wrap(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Text(
                                "S",
                                style: popUpTextStyle,
                              ),
                            ),
                            15.horizontalSpace,
                            Flexible(
                              flex: 1,
                              child: Text(
                                "M",
                                style: popUpTextStyle,
                              ),
                            ),
                            15.horizontalSpace,
                            Flexible(
                              flex: 1,
                              child: Text(
                                "L",
                                style: popUpTextStyle,
                              ),
                            ),
                            15.horizontalSpace,
                            Flexible(
                              flex: 1,
                              child: Text(
                                "XL",
                                style: popUpTextStyle,
                              ),
                            ),
                          ],
                        ),
                        10.verticalSpace,
                        Flexible(
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: colorList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    right: index == colorList.length - 1
                                        ? 0
                                        : 15.w),
                                child: CircleAvatar(
                                  backgroundColor: colorList[index],
                                  radius: 10.r,
                                ),
                              );
                            },
                          ),
                        ),
                        10.verticalSpace,
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              flex: 1,
                              child: CircleAvatar(
                                radius: 10.r,
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      size: 25.spMax,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Center(
                                child: Text(
                                  "1",style: popUpTextStyle,
                                ),
                              )
                            ),
                            Flexible(
                              flex: 1,
                              child: CircleAvatar(
                                radius: 10.r,
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                      size: 25.spMax,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: ContainerButtonModal(
        containerWidth: screenWidth,
        text: "Buy now",
        containerColor: Colors.redAccent,
      ),
    );
  }
}
