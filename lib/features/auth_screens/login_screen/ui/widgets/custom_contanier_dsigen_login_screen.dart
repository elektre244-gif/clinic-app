import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/app_routes.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/custom_bottom.dart';
import 'package:flutter_application_1/core/widgets/sin_up_text.dart';
import 'package:flutter_application_1/features/auth_screens/cubit/cubit/auth_cubit.dart';
import 'package:flutter_application_1/core/widgets/auth_bloc_listener.dart';
import 'package:flutter_application_1/features/auth_screens/login_screen/ui/widgets/custom_email_and_password_field.dart';
import 'package:flutter_application_1/core/widgets/custom_google_and_apple_icons.dart';
import 'package:flutter_application_1/features/auth_screens/login_screen/ui/widgets/custom_row_divider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContanierDsigenLoginScreen extends StatefulWidget {
  const CustomContanierDsigenLoginScreen({super.key});

  @override
  State<CustomContanierDsigenLoginScreen> createState() =>
      _CustomContanierDsigenLoginScreenState();
}

class _CustomContanierDsigenLoginScreenState
    extends State<CustomContanierDsigenLoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550.h,
      width: 600.w,
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Welcome Back",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30.h),
            CustomEmailAndPasswordField(
              emailController: emailController,
              passwordController: passwordController,
            ),
            SizedBox(height: 40.h),
            AuthBlocListener(
              child: Center(
                child: CustomBottom(
                  width: 200.w,
                  height: 30.h,
                  data: "Login",
                  bottomColor: AppColors.mainColor,
                  textColor: AppColors.background,
                  onTap: () {
                    context.read<AuthCubit>().login(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20.h),
            CustomRowDivider(),
            SizedBox(height: 20.h),
            CustomGoogleAndAppleIcons(),
            SizedBox(height: 20.h),
            Center(
              child: SinUpText(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.register);
                },
                data: "Don’t have an account?",
                color: AppColors.textPrimary,
                color2: AppColors.mainColor,
                fontSize: 15.sp,
                data2: " Sign up",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
