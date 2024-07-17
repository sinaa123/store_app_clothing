import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/apptheme/SizesApp.dart';

class IconContainer extends StatelessWidget {
   IconContainer({super.key,this.widget,this.text,this.iconSize,this.width,this.height, this.path,this.icon,required this.onTap,this.color,this.iconColor});
  String? path , text;
  Widget? widget;
  IconData? icon;
  VoidCallback onTap;
  Color? color,iconColor;
  double? width,height ,iconSize;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      borderRadius: BorderRadius.circular(100.h),
      onTap: (){onTap();},
      child: Container(
        width: width != null ?  width : 50.h ,
        height: height !=null ?height : 50.h,
        decoration: BoxDecoration(
          color: color ?? null,
          border: Border.all(color: Colors.grey.shade200,width: 1),
          borderRadius: BorderRadius.circular(100.h),
        ),
        child: widget == null
        ? Center(

          child: path != null
              ?  Image(
            width: SizesApp.iconMd,
            height: SizesApp.iconMd,
            image: AssetImage(path!),
          )
              : Icon(icon,
          size: iconSize != null ?iconSize : SizesApp.iconMd,color: iconColor ?? null,),

        )
        : Center(
          child: widget,

        ),
      ),
    );
  }
}
