import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEmailAndPasswordField extends StatelessWidget {
 final  TextEditingController emailController;
 final TextEditingController passwordController;
  const CustomEmailAndPasswordField({super.key, required this.emailController, required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email Address",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5.h),
        CustomTextField(
          controller: emailController,
          hintText: "name@gmail.com",
          prefixIcon: Icons.mail_outlined,
        ),
        SizedBox(height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Password",
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forget password?",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        CustomTextField(
          controller: passwordController,
          hintText: "************",
          prefixIcon: Icons.lock,
          isPassword: true,
        ),
      ],
    );
  }
}
