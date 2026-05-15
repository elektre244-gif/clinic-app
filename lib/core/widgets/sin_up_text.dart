import 'package:flutter/material.dart';

class SinUpText extends StatelessWidget {
  final String data;
  final double? fontSize;
  final  String data2;
  final Color? color;
  final Color? color2;
  final Function()? onTap;
  const SinUpText({super.key, required this.data, this.fontSize, required this.data2, this.color, this.color2, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(data,style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.w400,color: color),),
        InkWell(
          onTap:onTap ,
          child: Text(data2,style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.w400,color:color2 ),))
      ],
    );
  }
}