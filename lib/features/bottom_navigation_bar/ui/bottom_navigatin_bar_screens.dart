import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/features/auth_screens/cubit/cubit/auth_cubit.dart';
import 'package:flutter_application_1/features/auth_screens/data/auth_repo.dart';
import 'package:flutter_application_1/features/home_screen/ui/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigatinBarScreens extends StatefulWidget {
  const BottomNavigatinBarScreens({super.key});

  @override
  State<BottomNavigatinBarScreens> createState() =>
      _BottomNavigatinBarScreensState();
}

class _BottomNavigatinBarScreensState extends State<BottomNavigatinBarScreens> {
  int activeIndex = 0;
  List<Widget> screens = [
    BlocProvider(create: (context) => AuthCubit(AuthRepo()), child: HomeScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundScreen,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.h),
        child: screens[activeIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: activeIndex,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: AppColors.mainColor,
        iconSize: 26,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: "Books",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "ShopingCart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity_outlined),
            label: "Personal",
          ),
        ],
      ),
    );
  }
}
