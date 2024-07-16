import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  String tittle;
  ReusableText({
    Key? key,
    required this.tittle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: SizesApp.sm),
      child: Text(
        tittle,
        style: TextStyle(fontWeight: FontWeight.w200, fontSize: SizesApp.fontSm),
      ),
    );
  }
}