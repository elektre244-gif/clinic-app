import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomWelcomText extends StatelessWidget {
  const CustomWelcomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
           Text(
                "Hello,Mohamed",
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.h),
              Text(
                "Your health is our top priority today.",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w900,
                  color: AppColors.textPrimary,
                ),
              ),
      ],
    );
  }
}