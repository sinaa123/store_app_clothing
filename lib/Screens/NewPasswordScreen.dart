import 'package:clothing_app_store/Screens/HomeScreen.dart';
import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:clothing_app_store/utils/apptheme/TSpacingStyle.dart';
import 'package:clothing_app_store/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/widgets/HeaderWidget.dart';
import 'package:clothing_app_store/widgets/IconContainer.dart';
import 'package:clothing_app_store/widgets/ReusableText.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    InputBorder inputBorder =  OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(SizesApp.borderRadiusLarge)),
        borderSide: BorderSide(color: Colors.grey, width: 1));
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

                  },
                  icon: Icons.arrow_back_outlined,
                ),
                HeaderWidget(
                  tittle: 'Create new password',
                  message: "Your new password must be diferent\n from proviously used passwords ",
                ),
                SizedBox(
                  height: SizesApp.spaceBetweenSection,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        tittle: 'Password',
                      ),
                      TextFormField(
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(SizesApp.sm),
                            filled: true,
                            suffixIcon: Icon(Icons.visibility_off_outlined,size: SizesApp.iconMd,) ,
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: SizesApp.fontSm),
                            fillColor: Colors.white,
                            hintText: '*********',
                            border: inputBorder,
                            focusedBorder: inputBorder,
                            enabledBorder: inputBorder,
                            disabledBorder: inputBorder,
                            errorBorder: inputBorder.copyWith(
                                borderSide:
                                BorderSide(color: Colors.red, width: 1))),
                      ),
                      SizedBox(
                        height: SizesApp.spaceNetweenInputField,
                      ),

                      ReusableText(
                        tittle: 'Confirm Password',
                      ),
                      TextFormField(
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(SizesApp.sm),
                            filled: true,
                            suffixIcon: Icon(Icons.visibility_off_outlined,size: SizesApp.iconMd,) ,
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: SizesApp.fontSm),
                            fillColor: Colors.white,
                            hintText: '*********',
                            border: inputBorder,
                            focusedBorder: inputBorder,
                            enabledBorder: inputBorder,
                            disabledBorder: inputBorder,
                            errorBorder: inputBorder.copyWith(
                                borderSide:
                                BorderSide(color: Colors.red, width: 1))),
                      ),
                      SizedBox(
                        height: SizesApp.spaceNetweenInputField,
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: SizesApp.spaceBetweenSection,
                ),
                ContainerInkwell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    text: 'Create new password'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
