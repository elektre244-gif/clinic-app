import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/custom_auth_screens_app_bar.dart';
import 'package:flutter_application_1/features/auth_screens/cubit/cubit/auth_cubit.dart';
import 'package:flutter_application_1/features/auth_screens/data/auth_repo.dart';
import 'package:flutter_application_1/features/auth_screens/register_screen/ui/widgets/custom_contanier_for_desine.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundScreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => AuthCubit(AuthRepo()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAuthScreensAppBar(data: "Register", fontSize: 20.sp),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                    vertical: 20.h,
                  ),
                  child: CustomContanierForDesine(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
