import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
   const HeaderWidget({super.key,required this.tittle,required this.message,this.fontZise});
  final String tittle,message;
 final  double? fontZise;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            tittle,
            style: TextStyle(
                fontSize: fontZise !=null ?fontZise : SizesApp.fontLg,
                fontWeight: FontWeight.bold,
                color: ColorsApp.textColor),
          ),
           SizedBox(height:SizeConfig.defaultSize! * 2),
          Text(
            message,
            style:const TextStyle(
                fontSize: SizesApp.fontSm, color: ColorsApp.textSecondryColor),
          ),
        ],
      ),
    );
  }
}
