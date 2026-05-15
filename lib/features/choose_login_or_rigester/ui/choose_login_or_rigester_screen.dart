import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/app_routes.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/custom_bottom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseLoginOrRigesterScreen extends StatelessWidget {
  const ChooseLoginOrRigesterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/brand_screen.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 550.h),
            CustomBottom(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.login);
              },
              width: 250,
              height: 50,
              data: "Login",
              bottomColor: AppColors.mainColor,
              textColor: AppColors.textPrimary,
            ),
            SizedBox(height: 15.h),
            CustomBottom(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.register);
              },
              width: 250,
              height: 50,
              data: "Rigester",
              bottomColor: AppColors.mainColor,
              textColor: AppColors.textPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
