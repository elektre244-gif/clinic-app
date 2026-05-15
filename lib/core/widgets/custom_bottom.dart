import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottom extends StatelessWidget {
  final double height;
  final  String data;
  final Color bottomColor;
  final Color textColor;
  final Function()? onTap;
  final double width;
  const CustomBottom({
    super.key, 
    required this.width, 
    required this.height, 
    required this.data, 
    required this.bottomColor, 
    required this.textColor, 
    this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        width: width.w,
        height:height.h ,
        decoration: BoxDecoration(
          color: bottomColor,
          borderRadius: BorderRadius.circular(12.r),
        ),child: Center(
          child: Text(data,style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),),
        ),
      ),
    );
  }
}