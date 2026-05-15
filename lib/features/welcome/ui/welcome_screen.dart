import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/app_routes.dart';
import 'package:flutter_application_1/features/welcome/ui/widgets/custom_splash_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3),(){
    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.onboarding,  (Route<dynamic> route) => false);
   } );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustemSplashScreen()
    );
  }
}