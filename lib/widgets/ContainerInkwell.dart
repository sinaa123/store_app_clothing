import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/apptheme/ColorsApp.dart';

class ContainerInkwell extends StatelessWidget {
   ContainerInkwell({Key ? key ,required this.onTap,required this.text}):super(key: key);
  VoidCallback onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: InkWell(
        borderRadius:BorderRadius.circular(SizesApp.borderRadiusLarge),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(SizesApp.sm),
          height: 50.h,
          width: SizesApp.width,
          decoration: BoxDecoration(
            color:   ColorsApp.primaryColor ,
            borderRadius: BorderRadius.circular(SizesApp.borderRadiusLarge),
          ),
          child: Center(
            child: Text(text, style: const TextStyle(
                color: ColorsApp.white,
              fontSize:SizesApp.fontLg ,
            )),
          ),
        ),
      ),
    );
  }
}
