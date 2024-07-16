import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomeTextPadding extends StatelessWidget {
   CustomeTextPadding({Key?key,this.fontWeight,this.fontSize,required this.text,this.color}):super(key: key);
   String text;
   double? fontSize;
   FontWeight? fontWeight;
   Color? color;
   @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.all(15.h),
      child: Center(
        child: Text(text!,
          style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight
          ),),
      ),
    );
  }
}
