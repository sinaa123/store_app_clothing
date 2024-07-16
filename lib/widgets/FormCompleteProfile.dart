import 'package:clothing_app_store/Screens/HomeScreen.dart';
import 'package:clothing_app_store/Screens/NewPasswordScreen.dart';
import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:clothing_app_store/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/widgets/CountryCodePicker.dart';
import 'package:clothing_app_store/widgets/ReusableText.dart';
import 'package:flutter/material.dart';

class FormCompleteProfile extends StatelessWidget {
  const FormCompleteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    InputBorder inputBorder =  OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(SizesApp.borderRadiusLarge)),
        borderSide: BorderSide(color: Colors.grey, width: 1));
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
                      BorderSide(color: Colors.red, width: 1))),
            ),
            SizedBox(height:  SizesApp.spaceNetweenInputField,),
            ReusableText(
              tittle: 'Phone Number',
            ),
            TextFormField(
              obscureText: true,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.phone,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(SizesApp.sm),
                  filled: true,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade500, fontSize: SizesApp.fontSm),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: SizesApp.sm, right: SizesApp.xs),
                  child: CountryCodePicker(
                    onCountryCodeSelected: (String ) {  },

                  ),
                ),
                  fillColor: Colors.white,
                  hintText: 'Enter phone number',
                  border: inputBorder,
                  focusedBorder: inputBorder,
                  enabledBorder: inputBorder,
                  disabledBorder: inputBorder,
                  errorBorder: inputBorder.copyWith(
                      borderSide:
                      BorderSide(color: Colors.red, width: 1))),
            ),
            SizedBox(
              height: SizesApp.spaceNetweenInputField / 2,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPasswordScreen()));
                },
                child: Padding(
                  padding:  EdgeInsets.only(right:SizesApp.md),
                  child: RichText(
                    text: TextSpan(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                text: 'Sigin in'),

          ],
        ),
      ) ,
    );
  }
}
