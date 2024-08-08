import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:clothing_app_store/core/widgets/CustomeTextFiled.dart';
import 'package:clothing_app_store/core/widgets/SpaceWidget.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/password_screen/VerifiedEmailAccount.dart';
import 'package:clothing_app_store/core/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/core/widgets/ReusableText.dart';
import 'package:flutter/material.dart';

class FormSiginUp extends StatelessWidget {
  const FormSiginUp({super.key});

  @override
  Widget build(BuildContext context) {
    InputBorder inputBorder =  OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(SizesApp.borderRadiusLarge)),
        borderSide:const BorderSide(color: Colors.grey, width: 1));
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReusableText(
            tittle: 'Name',
          ),
          CustomeTextFiled(
            hintText: 'sinaa algahafi',
            textInputType: TextInputType.name,

          ),
          SpaceVerticalWidget(value: 1,),
          ReusableText(
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
            hintText: '******',
            maxLine: 1,
            suffecxIcon: const Icon(Icons.visibility_off_outlined,size: SizesApp.iconMd,color: ColorsApp.primaryColor,) ,

            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,

          ),
          SpaceVerticalWidget(value: 2,),
          Padding(
            padding:  EdgeInsetsDirectional.only(
              start: SizeConfig.defaultSize! * 2,
              end: SizeConfig.defaultSize! * 2,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: SizesApp.iconMd,
                  height: SizesApp.iconMd,
                  child: Checkbox(
                      fillColor: WidgetStateProperty.resolveWith((states) => ColorsApp.primaryColor,),
                    checkColor: ColorsApp.white,
                      value: true, onChanged: (value) {}),
                ),
                SpaceHorizentalWidget(value: 1,),
                const  Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Agree with \t',
                        style: TextStyle(
                          fontSize: SizesApp.fontSm,
                          color: ColorsApp.textColor,
                        ),
                      ),
                      TextSpan(
                        text: 'terms & condiction',
                        style:TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: SizesApp.fontSm,
                          color: ColorsApp.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SpaceVerticalWidget(value: 3,),
          ContainerInkwell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const VerifiedEmailAccount()));
              },
              text: 'Sigin up'),

        ],
      ) ,
    );
  }
}
