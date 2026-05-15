import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/app_routes.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/widgets/custom_bottom.dart';
import 'package:flutter_application_1/features/auth_screens/cubit/cubit/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthBlocListener extends StatelessWidget {

  final Widget child;
  const AuthBlocListener({
    super.key,
  required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoadingAuthState) {
          showDialog(
            context: context,
            builder: (context) => Center(
              child: CircularProgressIndicator(color: AppColors.mainColor),
            ),
          );
        } else if (state is SuccessAuthState) {
          Navigator.pushReplacementNamed(
            context,
            AppRoutes.bottomNavigationBar,
            
          );
        } else if (state is ErrorAuthState) {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Error"),
              content: Text("Error Please try again"),
            ),
          );
        }
      },
      child:child
    );
  }
}
