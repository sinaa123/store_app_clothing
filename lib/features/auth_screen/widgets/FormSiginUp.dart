import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/VerifiedEmailAccount.dart';
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
      child: Padding(
        padding:  EdgeInsets.symmetric(
          vertical: SizesApp.spaceBetweenSection,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableText(
              tittle: 'Name',
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(SizesApp.sm),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'sinaa algahafi',
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
                      const BorderSide(color: Colors.red, width: 1))),
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
                  suffixIcon: const Icon(Icons.visibility_off_outlined,size: SizesApp.iconMd,) ,
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
              height: SizesApp.spaceNetweenInputField ,
            ),
            Row(
              children: [
                SizedBox(
                  width: SizesApp.iconMd,
                  height: SizesApp.iconMd,
                  child: Checkbox(
                      fillColor: WidgetStateProperty.resolveWith((states) => ColorsApp.primaryColor,),
                    checkColor: ColorsApp.white,
                      value: true, onChanged: (value) {}),
                ),
                 SizedBox(
                  width: SizesApp.spaceBetweenItem,
                ),
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
            SizedBox(
              height: SizesApp.spaceBetweenSection,
            ),
            ContainerInkwell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const VerifiedEmailAccount()));
                },
                text: 'Sigin up'),

          ],
        ),
      ) ,
    );
  }
}
