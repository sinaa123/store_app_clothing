import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/features/home_screen/presentation/HomeScreen.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/NewPasswordScreen.dart';
import 'package:clothing_app_store/core/widgets/ReusableText.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});


  @override
  Widget build(BuildContext context) {
    InputBorder inputBorder =  OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(SizesApp.borderRadiusLarge)),
        borderSide: const BorderSide(color: Colors.grey, width: 1));
    return Form(
      child: Padding(
        padding:  EdgeInsets.symmetric(
          vertical: SizesApp.spaceBetweenSection,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableText(
              tittle: 'Email',
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(SizesApp.sm),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'example@gmail.com',
                  hintStyle: TextStyle(
                      color: Colors.grey.shade500, fontSize: SizesApp.fontSm),
                  border: inputBorder,
                  focusedBorder: inputBorder,
                  enabledBorder: inputBorder,
                  disabledBorder: inputBorder,
                  errorBorder: inputBorder.copyWith(
                      borderSide:
                      const  BorderSide(color: Colors.red, width: 1))),
            ),
           SizedBox(height:  SizesApp.spaceNetweenInputField,),
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
                  suffixIcon:const Icon(Icons.visibility_off_outlined,size: SizesApp.iconMd,) ,
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
                      const BorderSide(color: Colors.red, width: 1))),
            ),
             SizedBox(
              height: SizesApp.spaceNetweenInputField / 2,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewPasswordScreen()));
                },
                child: Padding(
                  padding:  EdgeInsets.only(right:SizesApp.md),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Forget password?',
                      style: TextStyle(
                          decoration:TextDecoration.underline ,
                          color: ColorsApp.primaryColor,
                          fontSize: SizesApp.fontMd
                      ),
                    ),
                  ),
                ),
              ),
            ),
             SizedBox(
              height: SizesApp.spaceBetweenSection,
            ),
            ContainerInkwell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                },
                text: 'Sigin in'),

          ],
        ),
      ) ,
    );
  }
}
