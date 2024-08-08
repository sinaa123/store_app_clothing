import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:clothing_app_store/core/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/core/widgets/IconContainer.dart';
import 'package:clothing_app_store/core/widgets/SpaceWidget.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/complete_screen/CompleteProfileScreen.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/sigin%20up_screen/SiginUpScreen.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/CodeNumberContainer.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/HeaderWidget.dart';
import 'package:flutter/material.dart';

class VerifiedEmailBody extends StatelessWidget {
  const VerifiedEmailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: SizeConfig.defaultSize! * 10,
              start: SizeConfig.defaultSize! * 2,
              end: SizeConfig.defaultSize! * 2,
              bottom: SizeConfig.defaultSize! * 2,
            ),
            child: IconContainer(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SiginUpScreen()));
              },
              icon: Icons.arrow_back_outlined,
            ),
          ),
          HeaderWidget(
            tittle: 'Verify code',
            message:
                "Please enter thr code we just send to email \n example@gmail.com ",
          ),
          SpaceVerticalWidget(
            value: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4,
              (index) => CodeNumberContainer(),
            ),
          ),
          SpaceVerticalWidget(
            value: 3,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Don't recive OTP?",
                    style: TextStyle(
                        color: ColorsApp.textColor, fontSize: SizesApp.fontMd),
                  ),
                ),
               SpaceVerticalWidget(value: 3,),
                GestureDetector(
                  onTap: () {},
                  child: RichText(
                    text: TextSpan(
                      mouseCursor: MouseCursor.uncontrolled,
                      text: 'Resend Code',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: ColorsApp.primaryColor,
                          letterSpacing: .5,
                          fontSize: SizesApp.fontMd),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SpaceVerticalWidget(value: 5,),
          ContainerInkwell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CompleteProfileScreen()));
              },
              text: 'Verify'),
        ],
      ),
    );
  }
}
