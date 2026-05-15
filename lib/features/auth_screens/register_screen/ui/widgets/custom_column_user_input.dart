import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/app_routes.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/auth_bloc_listener.dart';
import 'package:flutter_application_1/core/widgets/custom_bottom.dart';
import 'package:flutter_application_1/core/widgets/custom_google_and_apple_icons.dart';
import 'package:flutter_application_1/core/widgets/custom_text_field.dart';
import 'package:flutter_application_1/core/widgets/sin_up_text.dart';
import 'package:flutter_application_1/features/auth_screens/cubit/cubit/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColumnUserInput extends StatefulWidget {

  const CustomColumnUserInput({super.key});

  @override
  State<CustomColumnUserInput> createState() => _CustomColumnUserInputState();
}

class _CustomColumnUserInputState extends State<CustomColumnUserInput> {
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "Get Started",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          "Create Your Account To Book, Your first Appointment",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 20.h),
        Text(
          "Full Name",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5.h),
        CustomTextField(
          hintText: "Name",
          prefixIcon: Icons.perm_identity_rounded,
        ),
        SizedBox(height: 15.h),
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
        SizedBox(height: 15.h),
        Text(
          "Password",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5.h),
        CustomTextField(
          controller: passwordController,
          hintText: "************",
          prefixIcon: Icons.lock,
          isPassword: true,
        ),
        SizedBox(height: 15.h),
        Text(
          "Phone Number",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5.h),
        CustomTextField(
          
          hintText: "2011520000000",
          prefixIcon: Icons.phone,
          keyboardType: TextInputType.numberWithOptions(),
        ),
        SizedBox(height: 30.h),
        AuthBlocListener(
          child: Center(
            child: CustomBottom(
              width: 200.w,
              height: 30.h,
              data: "Create Account",
              bottomColor: AppColors.mainColor,
              textColor: AppColors.background,
               onTap: () {
                      context.read<AuthCubit>().register(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      );
                    },
            ),
          ),
        ),
        SizedBox(height: 20.h),
        CustomGoogleAndAppleIcons(),
        SizedBox(height: 10.h),
        SinUpText(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.login);
          },
          data: "Already have an account?",
          color: AppColors.textPrimary,
          color2: AppColors.mainColor,
          fontSize: 15.sp,
          data2: " Login",
        ),
      ],
    );
  }
}
