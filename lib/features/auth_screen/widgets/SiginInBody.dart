import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:clothing_app_store/core/widgets/SpaceWidget.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/sigin%20up_screen/SiginUpScreen.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/FormLogin.dart';
import 'package:clothing_app_store/features/welcome_screen/widgets/LineTextFooter.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/DividerWidget.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/FooterWidget.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/HeaderWidget.dart';
import 'package:flutter/material.dart';

class SiginInBody extends StatelessWidget {
  const SiginInBody({super.key});

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
                tittle: 'Sigin In',
                message: "Hi! welcome back, you've been missed",
              ),
              const FormLogin(),
              DividerWidget(
                tittle: 'or sigin in with',
              ),
              SpaceVerticalWidget(
                value: 5,
              ),
              const FooterWidget(),
              SpaceVerticalWidget(
                value: 3,
              ),
              LineTextFooter(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SiginUpScreen()));
                },
                sup_text: "Don't have  an account ? ",
                super_text: 'Sigin Up',
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
