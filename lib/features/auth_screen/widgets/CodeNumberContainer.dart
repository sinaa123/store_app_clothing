import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

class CodeNumberContainer extends StatelessWidget {
  const CodeNumberContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      padding: EdgeInsetsDirectional.all(SizeConfig.defaultSize! * 0.5),
      margin: EdgeInsets.all(SizeConfig.defaultSize! * 1),
      width: SizeConfig.defaultSize! * 8,
      height: SizeConfig.defaultSize! * 5,
      decoration: BoxDecoration(
          border: Border.all(color: ColorsApp.borderColor,width: 1),
          borderRadius: BorderRadius.circular(SizesApp.borderRadiusXLg)
      ),
      child: const Center(child: Text('2',
        style: TextStyle(
            fontSize: SizesApp.fontSm,
            color: ColorsApp.textColor
        ),)),
    );
  }
}
