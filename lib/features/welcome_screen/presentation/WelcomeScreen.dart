import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/apptheme/TSpacingStyle.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/SiginInScreen.dart';
import 'package:clothing_app_store/features/home_screen/presentation/HomeScreen.dart';
import 'package:clothing_app_store/core/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/widgets/LineTextFooter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/CustomeContainer.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                Row(
                  children: [
                    CustomeContainer(
                      width: 140.h,
                      height: 300.h,
                      imagePath:'assets/images/clothing1.jpg' ,
                      radius: 70.h,

                    ),
                    Column(
                      children: [
                        CustomeContainer(
                          width: 130.h,
                          height: 170.h,
                          imagePath:'assets/images/clothing.jpg' ,
                          radius: 60.h,

                        ),
                        CustomeContainer(
                          width: 120.h,
                          height: 120.h,
                          imagePath:'assets/images/clothing.jpg' ,
                          radius: 100.h,

                        ),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: SizesApp.spaceBetweenSection),
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'The\t',
                        style: TextStyle(
                          color: ColorsApp.textColor,
                          fontSize: SizesApp.fontLg,
                          fontWeight:FontWeight.bold ,

                        ),
                      ),
                      TextSpan(
                        text: 'Fashion\t',
                        style:TextStyle(
                          color: ColorsApp.primaryColor,
                          fontSize: SizesApp.fontLg,
                          fontWeight:FontWeight.bold ,

                        ),
                      ),
                      TextSpan(
                        text: 'App That \n',
                        style: TextStyle(
                          color: ColorsApp.textColor,
                          fontSize: SizesApp.fontLg,
                          fontWeight:FontWeight.bold ,

                        ),
                      ),
                      TextSpan(
                        text:'Makes Your Look Your Best',
                        style: TextStyle(
                          color: ColorsApp.textColor,
                          fontSize: SizesApp.fontLg,
                          fontWeight:FontWeight.bold ,

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizesApp.spaceBetweenItem),
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Lorem ipsum dolor sit amet, consectetur \n',
                        style: TextStyle(
                          color: ColorsApp.secondaryColor,
                          fontSize: SizesApp.fontSmall,

                        ),
                      ),
                      TextSpan(
                        text: 'adipliscing elit, sed do elusmod tempor includidunt',
                        style: TextStyle(
                          color: ColorsApp.secondaryColor,
                          fontSize: SizesApp.fontSmall,

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizesApp.spaceBetweenSection),
                ContainerInkwell(
                  text: 'Get Started',
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (contex)=>HomeScreen()));
                  },

                ),
                SizedBox(height: SizesApp.spaceBetweenItem),
                LineTextFooter(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SiginInScreen()));

                  },
                  sup_text: 'Already have an account ? ',
                  super_text: 'Sigin In',
                ),
                SizedBox(height: SizesApp.spaceBetweenItem),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
