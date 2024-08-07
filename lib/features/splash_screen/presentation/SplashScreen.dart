import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/features/welcome_screen/presentation/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key ? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 34.h),
          width: SizesApp.width,
          child: AnimatedSplashScreen(
            duration: 4000,
              splash: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.h),
                    child: Container(
                      width: 50.h,
                      height: 50.h,
                      padding: EdgeInsets.all(10.h),
                      decoration: BoxDecoration(
                        color: ColorsApp.primaryColor,
                        borderRadius: BorderRadius.circular(100),),
                      child: Center(
                        child: Text('f',style: TextStyle(
                          color: ColorsApp.white,
                          fontSize: 20.r,

                        )),
                      ),
                    ),
                  ),
                  Text('fashion.',style: TextStyle(
                    color: ColorsApp.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.r,

                  ),),
                ],
              ),
              nextScreen: WelcomeScreen(),
            splashTransition: SplashTransition.rotationTransition,
            pageTransitionType: PageTransitionType.fade,),
        ),
      ),
    );
  }
}
