import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String tittle;

  const ReusableText({
    Key? key,
    required this.tittle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          bottom: SizeConfig.defaultSize! * 1,
          top: SizeConfig.defaultSize! * 1,
          start: SizeConfig.defaultSize! * 2,
          end: SizeConfig.defaultSize! * 2,


      ),
      child: Text(
        tittle,
        style: const TextStyle(
            fontWeight: FontWeight.w200, fontSize: SizesApp.fontSm),
      ),
    );
  }
}
