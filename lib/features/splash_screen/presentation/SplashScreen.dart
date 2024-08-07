import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/features/splash_screen/widgets/SplashBody.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key ? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorsApp.white ,
      body: SplashBody(),
    );
  }
}
