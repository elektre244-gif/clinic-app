import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowDivider extends StatelessWidget {
  const CustomRowDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            radius: BorderRadius.circular(10.sp),
            color: AppColors.transparent,
          ),
        ),
        Text("Or Login With", style: TextStyle(fontSize: 10.sp)),
        Expanded(
          child: Divider(
            radius: BorderRadius.circular(10.sp),
            color: AppColors.transparent,
          ),
        ),
      ],
    );
  }
}
