import 'package:clothing_app_store/Screens/LocationAccessScreen.dart';
import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:clothing_app_store/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/widgets/CountryCodePicker.dart';
import 'package:clothing_app_store/widgets/ReusableText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCompleteProfile extends StatelessWidget {
   FormCompleteProfile({super.key});

 var gender = 'male';

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
                     const BorderSide(color: Colors.red, width: 1))),
            ),
            SizedBox(height:  SizesApp.spaceNetweenInputField,),
            ReusableText(
              tittle: 'Phone Number',
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.phone,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(SizesApp.sm),
                  filled: true,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade500, fontSize: SizesApp.fontSm),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: SizesApp.sm,right: SizesApp.sm),
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
                     const BorderSide(color: Colors.red, width: 1))),
            ),
            SizedBox(height:  SizesApp.spaceNetweenInputField,),
            ReusableText(
              tittle: 'Gender',
            ),
            GenderDropdown(),
            SizedBox(
              height: SizesApp.spaceBetweenSection,
            ),
            ContainerInkwell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LocationAccessScreen()));
                },
                text: 'Complete Your Profile'),

          ],
        ),
      ) ,
    );
  }

  Widget GenderDropdown() {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(SizesApp.borderRadiusLarge)),
          border: Border.all(color: Colors.grey, width: 1)
      ),
      child: DropdownButtonFormField<String>(
        dropdownColor: ColorsApp.white,
        elevation:2 ,
        padding: EdgeInsets.only(left: SizesApp.sm,right: SizesApp.sm),
        borderRadius: BorderRadius.circular(SizesApp.borderRadiusMd),
        onTap: () {},
        itemHeight: 50.h,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(SizesApp.sm),
            border: InputBorder.none),
        style:const  TextStyle(
            color: ColorsApp.textColor,
            fontSize: SizesApp.fontSm
        ),
        onChanged: (value) {
        },
        onSaved: (value) {
        },

        hint: Text('select your gender',style: TextStyle(
            color: Colors.grey.shade500, fontSize: SizesApp.fontSm
        ),),
        items: genderList.map((type) {
          return DropdownMenuItem<String>(
            child: Container(
                padding:  EdgeInsets.only(left: SizesApp.xl, right: SizesApp.xl),
                child: Text(type,style: const TextStyle(
                  fontSize: SizesApp.fontMd,
                  color: ColorsApp.textColor
                ),)),
            value: type,
          );
        }).toList(),
      ),
    );
  }
}

List<String> genderList = ['male', 'female', 'other'];
