import 'package:flutter/material.dart';

import '../utils/apptheme/ColorsApp.dart';
import '../utils/apptheme/SizesApp.dart';

class LineTextFooter extends StatelessWidget {
   LineTextFooter ({super.key,required this.sup_text,required this.super_text,required this.onTap});
  VoidCallback onTap;
  String sup_text,super_text;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: sup_text,
              style:const TextStyle(
                  color: ColorsApp.textColor,
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
                mouseCursor:MouseCursor.uncontrolled ,
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
      ),
    );
  }
}
