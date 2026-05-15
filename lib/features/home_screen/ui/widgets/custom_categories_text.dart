import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoriesText extends StatelessWidget {
  const CustomCategoriesText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              );
  }
}