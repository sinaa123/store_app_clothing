import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:clothing_app_store/features/welcome_screen/presentation/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class SplashBody  extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
    alignment: AlignmentDirectional.center,
    child: AnimatedSplashScreen(
    duration: 4000,
    splash: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Container(
    width: 50.h,
    height: 50.h,
    padding:  EdgeInsetsDirectional.all(10.h),
    margin: EdgeInsetsDirectional.all(10),
    decoration: BoxDecoration(
    color: ColorsApp.primaryColor,
    borderRadius: BorderRadius.circular(100),),
    child: Text('f',
    textAlign: TextAlign.center,
style: TextStyle(
color: ColorsApp.white,
fontSize: 20.r,
fontWeight: FontWeight.bold

)),
),
Text('fashion.',style: TextStyle(
color: ColorsApp.textColor,
fontWeight: FontWeight.bold,
fontSize: 20.r,

),),
],
),
nextScreen: const WelcomeScreen(),
splashTransition: SplashTransition.rotationTransition,
pageTransitionType: PageTransitionType.fade,),
);
  }
}
