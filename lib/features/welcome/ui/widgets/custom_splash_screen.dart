import 'package:flutter/material.dart';

class CustemSplashScreen extends StatelessWidget {
  const CustemSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          "assets/image/welcom_image.jpg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
