import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:flutter/material.dart';

class Categorywidget extends StatelessWidget {
  const Categorywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:40.0,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        separatorBuilder: ( context, int index) {
          return Padding(
            padding:const EdgeInsets.only(right: 10),

          );


        },
        itemBuilder: ( context, int index) {
          return InkWell(
            onTap: (){
              // nextScreen(context, PlaceCategoryDetials(caregoryType: categoryList[index].name.toString(),));
            },
            child: Chip(
              label: Text('hhh'),
              avatar: CircleAvatar(
                backgroundColor: Colors.white,
                // backgroundImage: AssetImage(categoryList[index].image.toString()),
              ),
              backgroundColor: ColorsApp.white,
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          );
        },),
    );
  }
}
/*
ClipRRect(
borderRadius: BorderRadius.circular(16.h),
child: Container(
width: 180.h,
decoration: BoxDecoration(
color: AppColors.containerColor,
),*/
