
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/app_routes.dart';
import 'package:flutter_application_1/features/welcome/ui/welcome_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ClinceApp extends StatelessWidget {
  const ClinceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        home: WelcomeScreen(),
        // FirebaseAuth.instance.currentUser!=null?BottomNavigatinBarScreens():
      onGenerateRoute: AppRoutes.generateRoute,
      ),
    );
  }
}

