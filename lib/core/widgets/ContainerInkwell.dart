import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ContainerInkwell extends StatelessWidget {
   ContainerInkwell({Key ? key ,required this.onTap,required this.text}):super(key: key);
  VoidCallback onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      borderRadius:BorderRadius.circular(SizesApp.borderRadiusLarge),
      onTap: onTap,
      child: Container(
        padding: EdgeInsetsDirectional.only(
          top: SizeConfig.defaultSize! * 1,
        ),
        margin: EdgeInsetsDirectional.only(
          start: SizeConfig.defaultSize! * 2,
          end: SizeConfig.defaultSize! * 2,
        ),
        height: SizeConfig.defaultSize! * 6.5,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color:   ColorsApp.primaryColor ,
          borderRadius: BorderRadius.circular(SizesApp.borderRadiusLarge),
        ),
        child: Center(
          child: Text(text,
              style:  TextStyle(
              color: ColorsApp.white,
            fontSize:SizesApp.fontLg,

          )),
        ),
      ),
    );
  }
}
