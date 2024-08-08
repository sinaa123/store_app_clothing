import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:clothing_app_store/core/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/core/widgets/CustomeContainer.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/login_screen/SiginInScreen.dart';
import 'package:clothing_app_store/features/home_screen/presentation/HomeScreen.dart';
import 'package:clothing_app_store/features/welcome_screen/widgets/LineTextFooter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomBody extends StatelessWidget {
  const WelcomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(
            top: SizeConfig.defaultSize! * 8
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Spacer(),
                  CustomeContainer(
                    width: SizeConfig.defaultSize! * 23,
                    height: SizeConfig.defaultSize! * 45,
                    imagePath:'assets/images/clothing1.jpg' ,
                    radius: 100.h,

                  ),
                  Spacer(),
                  Column(
                    children: [
                      CustomeContainer(
                        width: SizeConfig.defaultSize! * 16,
                        height: SizeConfig.defaultSize! * 25,
                        imagePath:'assets/images/clothing.jpg' ,
                        radius: 60.h,

                      ),
                      CustomeContainer(
                        width: SizeConfig.defaultSize! * 17,
                        height: SizeConfig.defaultSize! * 17,
                        imagePath:'assets/images/clothing.jpg' ,
                        radius: 100.h,

                      ),
                    ],
                  ),
                  Spacer(),

                ],
              ),
              SizedBox(height: SizeConfig.defaultSize! * 4),
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
              SizedBox(height: SizeConfig.defaultSize! * 2),
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
              SizedBox(height: SizeConfig.defaultSize! * 4),
              ContainerInkwell(
                text: 'Get Started',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (contex)=>const HomeScreen()));
                },

              ),
              SizedBox(height: SizeConfig.defaultSize! * 2),
              LineTextFooter(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SiginInScreen()));

                },
                sup_text: 'Already have an account ? ',
                super_text: 'Sigin In',
              ),
              SizedBox(height: SizeConfig.defaultSize! * 2),


            ],
          ),
        ),
      ),
    );
  }
}
