import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:flutter/material.dart';

class LineTextFooter extends StatelessWidget {
   LineTextFooter ({super.key,required this.sup_text,required this.super_text,required this.onTap});
  VoidCallback onTap;
  String sup_text,super_text;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: sup_text,
            style:const TextStyle(
                fontWeight: FontWeight.w500,
                color: ColorsApp.textSecondryColor,
                fontSize: SizesApp.fontMd
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            onTap();
          },
          child: RichText(
            text: TextSpan(
              text: super_text,
              style:const TextStyle(
                  decoration:TextDecoration.underline ,
                  color: ColorsApp.primaryColor,
                  fontSize: SizesApp.fontMd
              ),
            ),
          ),
        ),
      ],
    );
  }
}
