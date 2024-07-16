import 'package:clothing_app_store/Screens/SiginUpScreen.dart';
import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:clothing_app_store/utils/apptheme/TSpacingStyle.dart';
import 'package:clothing_app_store/widgets/DividerWidget.dart';
import 'package:clothing_app_store/widgets/FooterWidget.dart';
import 'package:clothing_app_store/widgets/FormLogin.dart';
import 'package:clothing_app_store/widgets/HeaderWidget.dart';
import 'package:clothing_app_store/widgets/LineTextFooter.dart';
import 'package:flutter/material.dart';

class SiginInScreen extends StatelessWidget {
  SiginInScreen({Key? key}) : super(key: key);
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
                   tittle: 'Sigin In',
                   message: "Hi! welcome back, you've been missed",
                 ),
                 const FormLogin(),
                   DividerWidget(
                     tittle: 'or sigin in with',
                   ),
                SizedBox(height: SizesApp.spaceBetweenSection,),
                const  FooterWidget(),
                  SizedBox(height: SizesApp.spaceBetweenItem,),
                  LineTextFooter(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SiginUpScreen()));

                    },
                    sup_text: "Don't have  an account ? ",
                    super_text: 'Sigin Up',
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
