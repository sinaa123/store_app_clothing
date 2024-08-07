import 'package:flutter/material.dart';

class SizeConfig{
  static double? screenHeight;
  static double? screenWidth;
  static double? defaultSize;
  static Orientation? orientation;
   static void  init(BuildContext context){
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight=MediaQuery.of(context).size.width;
    orientation = MediaQuery.of(context).orientation;
    defaultSize = orientation == Orientation.landscape
    ? screenHeight! * 0.024
    : screenWidth! * 0.024;
    print('this is the defualt size $defaultSize');
  }


}