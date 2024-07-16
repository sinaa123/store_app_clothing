import 'package:clothing_app_store/Screens/SiginInScreen.dart';
import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:clothing_app_store/utils/apptheme/TSpacingStyle.dart';
import 'package:clothing_app_store/widgets/DividerWidget.dart';
import 'package:clothing_app_store/widgets/FooterWidget.dart';
import 'package:clothing_app_store/widgets/FormSiginUp.dart';
import 'package:clothing_app_store/widgets/HeaderWidget.dart';
import 'package:clothing_app_store/widgets/LineTextFooter.dart';
import 'package:flutter/material.dart';

class SiginUpScreen extends StatelessWidget {
  const SiginUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.white,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: TSpacingStyle.paddingWithAppBarHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   HeaderWidget(
                     tittle: 'Create Account',
                     message: "Fill your information below or register \n with your social account",
                   ),
                  const FormSiginUp(),
                   DividerWidget(
                     tittle: 'or sigin up with',
                   ),
                  SizedBox(height: SizesApp.spaceBetweenSection,),
                  const  FooterWidget(),
                  SizedBox(height: SizesApp.spaceBetweenItem,),
                  LineTextFooter(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SiginInScreen()));

                    },
                    sup_text: "Already have  an account ? ",
                    super_text: 'Sigin In',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
