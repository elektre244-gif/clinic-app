import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
            radius: 20.r,
            child: Center(child: Icon(Icons.perm_identity_rounded)),
          ),Text(
            "Alshruok Medical center",
            style: TextStyle(
              color: AppColors.mainColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),),
          Icon(Icons.notifications_none),
                ],
              );
  }
}