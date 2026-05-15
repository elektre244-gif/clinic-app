import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/features/auth_screens/register_screen/ui/widgets/custom_column_user_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContanierForDesine extends StatelessWidget {
  const CustomContanierForDesine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.h,
      width: 700.w,
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: CustomColumnUserInput(),
      ),
    );
  }
}
