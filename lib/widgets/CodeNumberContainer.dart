import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodeNumberContainer extends StatelessWidget {
  const CodeNumberContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.h,
      height: 45.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300,width: 1),
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
