import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:clothing_app_store/core/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/core/widgets/CustomeTextFiled.dart';
import 'package:clothing_app_store/core/widgets/SpaceWidget.dart';
import 'package:clothing_app_store/features/home_screen/presentation/HomeScreen.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/password_screen/NewPasswordScreen.dart';
import 'package:clothing_app_store/core/widgets/ReusableText.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const  ReusableText(
            tittle: 'Email',
          ),
          CustomeTextFiled(
            hintText: 'example@gmail.com',
            textInputType: TextInputType.emailAddress,

          ),
          SpaceVerticalWidget(value: 1,),
          ReusableText(
            tittle: 'Password',
          ),
          CustomeTextFiled(
            obscureText: true,
            textInputAction: TextInputAction.done,
            hintText: '**********',
            maxLine: 1,
            textInputType: TextInputType.visiblePassword,
            suffecxIcon:const Icon(Icons.visibility_off_outlined,size: SizesApp.iconMd,) ,



          ),
          SpaceVerticalWidget(value: 1,),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewPasswordScreen()));
              },
              child: Padding(
                padding:  EdgeInsetsDirectional.only(
                    start: SizeConfig.defaultSize!  * 1,
                    end: SizeConfig.defaultSize!  * 1,
                ),
                child: RichText(
                  text: const TextSpan(
                    text: 'Forget password?',

                    style: TextStyle(
                        decoration:TextDecoration.underline ,
                        color: ColorsApp.primaryColor,
                        letterSpacing: 0.2,
                        height: 1.55,
                        fontSize: SizesApp.fontMd
                    ),
                  ),
                ),
              ),
            ),
          ),
          SpaceVerticalWidget(value: 5,),
          ContainerInkwell(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
              },
              text: 'Sigin in'),

        ],
      ) ,
    );
  }
}
