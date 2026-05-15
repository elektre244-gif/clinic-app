import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/custom_auth_screens_app_bar.dart';
import 'package:flutter_application_1/features/auth_screens/cubit/cubit/auth_cubit.dart';
import 'package:flutter_application_1/features/auth_screens/data/auth_repo.dart';
import 'package:flutter_application_1/features/auth_screens/login_screen/ui/widgets/custom_contanier_dsigen_login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(AuthRepo()),
      child: Scaffold(
        backgroundColor: AppColors.greyLight,

        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAuthScreensAppBar(data: 'Login Screen', fontSize: 20.sp),
                SizedBox(height: 40.h),
                CustomContanierDsigenLoginScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
