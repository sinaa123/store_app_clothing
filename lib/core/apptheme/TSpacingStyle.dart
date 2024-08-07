

import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:flutter/material.dart';

class TSpacingStyle{
  static  EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: SizesApp.appBarHeight,
    left: SizesApp.defualtSpace,
    bottom: SizesApp.defualtSpace,
    right: SizesApp.defualtSpace,

  );



  static  EdgeInsetsGeometry paddingWithAppBarHeight2 = EdgeInsets.only(
    top: SizesApp.defualtSpace,
    left: SizesApp.defualtSpace,
    right: SizesApp.defualtSpace,

  );
}