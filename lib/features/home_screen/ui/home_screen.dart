import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/custom_text_field.dart';
import 'package:flutter_application_1/features/home_screen/ui/widgets/custom_categories_text.dart';
import 'package:flutter_application_1/features/home_screen/ui/widgets/custom_home_appbar.dart';
import 'package:flutter_application_1/features/home_screen/ui/widgets/custom_welcom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             CustomHomeAppbar(),
              SizedBox(height: 15.h,),
              CustomWelcomText(),
              SizedBox(height: 20.h),
              CustomTextField(
                hintText: "Find Your Doctor",
                prefixIcon: Icons.search,
              ),
              SizedBox(height: 15.h),
              CustomCategoriesText(),
              SizedBox(height: 10.h,),
             
              
             
            ],
          ),
        ),
      ),
    );
  }
}
