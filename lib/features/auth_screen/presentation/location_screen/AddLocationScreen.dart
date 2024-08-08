import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/apptheme/TSpacingStyle.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/location_screen/LocationAccessScreen.dart';
import 'package:clothing_app_store/core/widgets/IconContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddLocationScreen extends StatelessWidget {
  const AddLocationScreen({super.key});


  @override
  Widget build(BuildContext context) {
    InputBorder inputBorder =  OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(SizesApp.borderRadiusLarge)),
        borderSide: BorderSide(color: Colors.grey, width: 1));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconContainer(
                    onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>LocationAccessScreen())

                    );
                  },
                    icon: Icons.arrow_back_outlined,
                  ),
                  SizedBox(width: SizesApp.xl,),
                  Text('Enter Your Location',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: SizesApp.fontMd,
                    color: ColorsApp.textColor,

                  ),),
                ],
              ),
              SizedBox(
                height: SizesApp.spaceBetweenSection,
              ),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(SizesApp.sm),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'yemen sana',
                    hintStyle: TextStyle(
                        color: Colors.grey.shade500, fontSize: SizesApp.fontSm),
                    border: inputBorder,
                    prefixIcon: Icon(Icons.search,size: SizesApp.iconMd,color: ColorsApp.primaryColor,),
                    suffixIcon: Padding(
                      padding:  EdgeInsets.all(SizesApp.xs),
                      child: IconContainer(
                        onTap: (){},
                        height: 35.h,
                        width: 35.h,
                        iconSize: SizesApp.iconSm,
                        iconColor:  ColorsApp.primaryColor,
                        icon:  Icons.close,
                      ),
                    ),
                    focusedBorder: inputBorder,
                    enabledBorder: inputBorder,
                    disabledBorder: inputBorder,
                    errorBorder: inputBorder.copyWith(
                        borderSide:
                        BorderSide(color: Colors.red, width: 1))),
              ),
              SizedBox(
                height: SizesApp.spaceBetweenSection,
              ),
              Row(
                children: [
                  Icon(Icons.near_me_sharp,
                    size: SizesApp.iconMd,color: ColorsApp.primaryColor,),
                  SizedBox(width: SizesApp.md,),
                  Text('User my current location',
                  style: TextStyle(
                    fontSize: SizesApp.fontMd,
                    color: ColorsApp.textColor
                  ),)
                ],
              ),
              SizedBox(
                height: SizesApp.spaceBetweenItem,
              ),
              const Divider(
                color:  Colors.grey,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(
                height: SizesApp.spaceBetweenItem,
              ),
              Text('SEARCH RESULT',
                style: TextStyle(
                    fontSize: SizesApp.fontSm,
                    color: ColorsApp.secondaryColor
                ),),
              SizedBox(
                height: SizesApp.spaceBetweenItem,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.near_me_sharp,
                    size: SizesApp.iconMd,color: ColorsApp.primaryColor,),
                  SizedBox(width: SizesApp.md,),
                  Text('Yemen sana',
                    style: TextStyle(
                        fontSize: SizesApp.fontMd,
                        color: ColorsApp.textColor
                    ),)
                ],
              ),
              SizedBox(
                height: SizesApp.spaceBetweenItem,
              ),
              Text('8502 Preston Rd. Ingl...',
                style: TextStyle(
                    fontSize: SizesApp.fontSm,
                    color: ColorsApp.secondaryColor
                ),),
              SizedBox(
                height: SizesApp.spaceBetweenItem,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
