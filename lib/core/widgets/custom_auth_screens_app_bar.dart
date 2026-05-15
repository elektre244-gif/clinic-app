import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAuthScreensAppBar extends StatelessWidget  {
  final String data;
  final double? fontSize;
  const CustomAuthScreensAppBar({super.key, required this.data, this.fontSize, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new,size: 25.sp,)),
            SizedBox(width: 70.w,),
            Icon(Icons.medical_services_rounded),
            Text(data,style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold
            ),)
        ],
      ),
    );
  }
  

}