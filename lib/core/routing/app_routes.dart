import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth_screens/login_screen/ui/login_screen.dart';
import 'package:flutter_application_1/features/auth_screens/register_screen/ui/register_screen.dart';
import 'package:flutter_application_1/features/bottom_navigation_bar/ui/bottom_navigatin_bar_screens.dart';
import 'package:flutter_application_1/features/choose_login_or_rigester/ui/choose_login_or_rigester_screen.dart';
import 'package:flutter_application_1/features/home_screen/ui/home_screen.dart';
import '../../features/onboarding/view/onboarding_screen.dart';


class AppRoutes {
  static const String splash = '/';
  static const String bottomNavigationBar = '/bottomNavigationBar';
  static const String onboarding = '/onboarding';
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String doctorDetails = '/doctor-details';
  static const String booking = '/booking';
  static const String profile = '/profile';
  static const String chooseLoginOrRigester = '/chooseLoginOrRigester';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case bottomNavigationBar:
        return MaterialPageRoute(builder: (_) => const BottomNavigatinBarScreens());
      case chooseLoginOrRigester:
        return MaterialPageRoute(builder: (_) => const ChooseLoginOrRigesterScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
     
    }
  }
}

