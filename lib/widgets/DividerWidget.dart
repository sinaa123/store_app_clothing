import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
   DividerWidget({super.key , required this.tittle});
  String tittle;

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color:  Colors.grey,
            thickness: 0.5,
            indent: 68,
            endIndent: 5,
          ),
        ),
        Text(
          tittle,
          style: TextStyle(
            fontSize: SizesApp.fontSm,
            color: ColorsApp.secondaryColor
          ),
        ),
        Flexible(
          child: Divider(
            color: Colors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
