import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:clothing_app_store/core/widgets/CustomeTextFiled.dart';
import 'package:clothing_app_store/core/widgets/SpaceWidget.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/location_screen/LocationAccessScreen.dart';
import 'package:clothing_app_store/core/widgets/ContainerInkwell.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/CountryCodePicker.dart';
import 'package:clothing_app_store/core/widgets/ReusableText.dart';
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
            tittle: 'Phone Number',
          ),
          CustomeTextFiled(
            hintText: '7777777777',
            textInputType: TextInputType.phone,
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: SizesApp.sm,right: SizesApp.sm),
              child: CountryCodePicker(
                onCountryCodeSelected: (String ) {  },

              ),
            ),

          ),
          SpaceVerticalWidget(value: 1,),
          ReusableText(
            tittle: 'Gender',
          ),
          GenderDropdown(),
          SpaceVerticalWidget(value: 3,),
          ContainerInkwell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const LocationAccessScreen()));
              },
              text: 'Complete Your Profile'),
          SpaceVerticalWidget(value: 5,),

        ],
      ) ,
    );
  }

  Widget GenderDropdown() {
    return Container(
      padding: EdgeInsetsDirectional.all(SizeConfig.defaultSize! * 0.5),
      margin: EdgeInsets.all(SizeConfig.defaultSize! * 1),
      height: SizeConfig.defaultSize! * 6,
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
