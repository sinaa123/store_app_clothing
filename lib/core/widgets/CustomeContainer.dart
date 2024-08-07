import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:flutter/material.dart';


class CustomeContainer extends StatelessWidget {
   CustomeContainer({Key? key , this.width,this.height,this.imagePath,this.radius}) : super(key: key);
  double?  width;
  double?  height;
  String? imagePath;
  double? radius ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: SizesApp.xs,bottom: SizesApp.xs),
      width: width,
      height: height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imagePath!),
              fit: BoxFit.cover),
          color: ColorsApp.backgroundColor,
          borderRadius: BorderRadiusDirectional.circular(radius!)),
    );
  }
}
