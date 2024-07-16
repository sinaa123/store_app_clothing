import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/apptheme/SizesApp.dart';

class IconContainer extends StatelessWidget {
   IconContainer({super.key, this.path,this.icon,required this.onTap,this.color,this.iconColor});
  String? path;
  IconData? icon;
  VoidCallback onTap;
  Color? color,iconColor;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: (){onTap();},
      child: Container(
        width: 50.h,
        height: 50.h,
        decoration: BoxDecoration(
          color: color ?? null,
          border: Border.all(color: Colors.grey.shade200,width: 1),
          borderRadius: BorderRadius.circular(100.h),
        ),
        child: Center(

          child: path != null
              ?  Image(
            width: SizesApp.iconMd,
            height: SizesApp.iconMd,
            image: AssetImage(path!),
          )
              : Icon(icon,
          size: SizesApp.iconMd,color: iconColor ?? null,),

        ),
      ),
    );
  }
}
