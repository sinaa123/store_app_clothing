import 'package:clothing_app_store/Screens/AddLocationScreen.dart';
import 'package:clothing_app_store/Screens/HomeScreen.dart';
import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:clothing_app_store/utils/apptheme/TSpacingStyle.dart';
import 'package:clothing_app_store/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/widgets/HeaderWidget.dart';
import 'package:clothing_app_store/widgets/IconContainer.dart';
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
