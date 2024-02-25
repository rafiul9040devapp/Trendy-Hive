import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerButtonModal extends StatelessWidget {
  final Color? containerColor;
  final double? containerWidth;
  final String? text;

  const ContainerButtonModal(
      {super.key, this.containerColor, this.containerWidth, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .6.h,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: containerColor,
      ),
      child: Text(
        text ?? "",
        style: TextStyle(
          color: Colors.white70,
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
        ),
      ),
    );
  }
}
