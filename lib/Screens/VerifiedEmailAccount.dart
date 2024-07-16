import 'package:clothing_app_store/Screens/CompleteProfileScreen.dart';
import 'package:clothing_app_store/Screens/SiginUpScreen.dart';
import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:clothing_app_store/utils/apptheme/TSpacingStyle.dart';
import 'package:clothing_app_store/widgets/CodeNumberContainer.dart';
import 'package:clothing_app_store/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/widgets/HeaderWidget.dart';
import 'package:clothing_app_store/widgets/IconContainer.dart';
import 'package:flutter/material.dart';

class VerifiedEmailAccount extends StatelessWidget {
  const VerifiedEmailAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.white,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconContainer(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SiginUpScreen()));

                  },
                  icon: Icons.arrow_back_outlined,
                ),
                HeaderWidget(
                  tittle: 'Verify code',
                  message: "Please enter thr code we just send to email \n example@gmail.com ",
                ),
                SizedBox(
                  height: SizesApp.spaceBetweenSection,
                ),
                Row(
                  children: [
                    Spacer(),
                    CodeNumberContainer(),
                    Spacer(),
                    CodeNumberContainer(),
                    Spacer(),
                    CodeNumberContainer(),
                    Spacer(),
                    CodeNumberContainer(),
                    Spacer(),

                  ],
                ),
                SizedBox(
                  height: SizesApp.spaceBetweenSection,
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
                              color: ColorsApp.textColor,
                              fontSize: SizesApp.fontMd
                          ),
                        ),
                      ),
                      SizedBox(height: SizesApp.md,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: RichText(
                          text: TextSpan(
                            mouseCursor:MouseCursor.uncontrolled ,
                            text: 'Resend Code',
                            style: TextStyle(
                                decoration:TextDecoration.underline ,
                                color: ColorsApp.primaryColor,
                                fontSize: SizesApp.fontMd
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizesApp.spaceBetweenSection,
                ),
                ContainerInkwell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CompleteProfileScreen()));
                    },
                    text: 'Verify'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
