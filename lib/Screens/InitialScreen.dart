import 'package:clothing_app_store/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key ? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      child: MaterialApp(
        title: 'Clothing app store',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Poppins',
        ),
        home: SplashScreen(),
      ),
    );
  }
}
