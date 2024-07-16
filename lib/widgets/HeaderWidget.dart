import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
   HeaderWidget({super.key,required this.tittle,required this.message});
  String tittle,message;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.center ,
      children: [
        Padding(
          padding: EdgeInsets.all(20.h),
          child: Text(
            tittle,
            style: TextStyle(
                fontSize: SizesApp.fontLg,
                fontWeight: FontWeight.bold,
                color: ColorsApp.textColor),
          ),
        ),
         SizedBox(height:SizesApp.sm ,),
        Center(
          child: Text(
            message,
            style: TextStyle(
                fontSize: SizesApp.fontSm, color: ColorsApp.secondaryColor),
          ),
        ),
      ],
    );
  }
}
