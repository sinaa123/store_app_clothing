import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
   HeaderWidget({super.key,required this.tittle,required this.message,this.fontZise});
  String tittle,message;
  double? fontZise;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.center ,
      children: [
        Padding(
          padding: EdgeInsets.all(SizesApp.defualtSpace),
          child: Text(
            tittle,
            style: TextStyle(
                fontSize: fontZise !=null ?fontZise : SizesApp.fontLg,
                fontWeight: FontWeight.bold,
                color: ColorsApp.textColor),
          ),
        ),
         SizedBox(height:SizesApp.sm ,),
        Text(
          message,
          textAlign: TextAlign.center,
          style:const TextStyle(
              fontSize: SizesApp.fontSm, color: ColorsApp.secondaryColor),
        ),
      ],
    );
  }
}
