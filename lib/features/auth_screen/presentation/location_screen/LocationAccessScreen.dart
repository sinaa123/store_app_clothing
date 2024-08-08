import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/apptheme/TSpacingStyle.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/location_screen/AddLocationScreen.dart';
import 'package:clothing_app_store/features/home_screen/presentation/HomeScreen.dart';
import 'package:clothing_app_store/core/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/HeaderWidget.dart';
import 'package:clothing_app_store/core/widgets/IconContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationAccessScreen extends StatelessWidget {
  const LocationAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconContainer(
                  width: 150.h,
                  height: 150.h,
                  iconSize: SizesApp.iconSize,
                  onTap: (){},
                  icon: Icons.location_on,
                  color: Colors.grey.shade200,
                  iconColor: ColorsApp.primaryColor,
                ),
                SizedBox(
                  height: SizesApp.spaceBetweenItem,
                ),
                HeaderWidget(
                  tittle: 'What is Your Location?',
                  message: "We need to know your location in order \n to suggest nearby services. ",
                ),
                SizedBox(
                  height: SizesApp.spaceBetweenSection,
                ),
                ContainerInkwell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                    },
                    text: 'Allow Location Access'),
                SizedBox(
                  height: SizesApp.spaceBetweenItem,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddLocationScreen()));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Enter Location Manually',
                      style: TextStyle(
                          color: ColorsApp.primaryColor,
                          fontSize: SizesApp.fontLg
                      ),
                    ),),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
