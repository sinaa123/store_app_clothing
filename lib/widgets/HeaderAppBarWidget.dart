import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:clothing_app_store/widgets/IconContainer.dart';
import 'package:flutter/material.dart';

class HeaderAppBarWidget extends StatelessWidget {
  const HeaderAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InputBorder inputBorder =  OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(SizesApp.borderRadiusLarge)),
        borderSide: const BorderSide(color: Colors.grey, width: 1));
    return Padding(
      padding:  EdgeInsets.only(top: SizesApp.spaceBetweenSection),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Location',style: TextStyle(
            color: ColorsApp.secondaryColor,
            fontSize: SizesApp.fontMd
          ),),
          Row(
            children: [
              Row(
                children: [
                  const  Icon(Icons.location_on,color: ColorsApp.primaryColor,size: SizesApp.iconMd,),
                  SizedBox(width: SizesApp.xs,),
                  const Text('Sanaa , Yemen ')
                ],
              ),
              const Spacer(),
              IconContainer(
                onTap: (){},
                color: Colors.grey.shade200,
              icon: Icons.notifications,
              iconColor: ColorsApp.textColor,)


            ],
          ),
          SizedBox(height: SizesApp.spaceBetweenItem,),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(SizesApp.sm),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Colors.grey.shade500, fontSize: SizesApp.fontSm),
                      border: inputBorder,
                      prefixIcon:const Icon(Icons.search,size: SizesApp.iconMd,color: ColorsApp.primaryColor,),
                      focusedBorder: inputBorder,
                      enabledBorder: inputBorder,
                      disabledBorder: inputBorder,
                      errorBorder: inputBorder.copyWith(
                          borderSide:
                          const BorderSide(color: Colors.red, width: 1))),
                ),
              ),
              SizedBox(width: SizesApp.sm,),
              IconContainer(
                onTap: (){},
                color: ColorsApp.primaryColor,
                icon: Icons.filter_list_alt,
                iconColor: ColorsApp.white,)

            ],
          ),
          SizedBox(height: SizesApp.spaceBetweenSection,),



        ],
      ),
    );
  }
}