import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:clothing_app_store/core/widgets/SpaceWidget.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/login_screen/SiginInScreen.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/FormSiginUp.dart';
import 'package:clothing_app_store/features/welcome_screen/widgets/LineTextFooter.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/DividerWidget.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/FooterWidget.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/HeaderWidget.dart';
import 'package:flutter/material.dart';

class SiginUpBody extends StatelessWidget {
  const SiginUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: SizeConfig.defaultSize! * 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const HeaderWidget(
                tittle: 'Create Account',
                message: "Fill your information below or register \n with your social account",
              ),
              const FormSiginUp(),
              DividerWidget(
                tittle: 'or sigin up with',
              ),
              SpaceVerticalWidget(
                value: 5,
              ),
              const  FooterWidget(),
              SpaceVerticalWidget(
                value: 3,
              ),
              LineTextFooter(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SiginInScreen()));

                },
                sup_text: "Already have  an account ? ",
                super_text: 'Sigin In',
              ),
              SpaceVerticalWidget(
                value: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
