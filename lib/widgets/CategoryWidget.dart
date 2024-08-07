
import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/widgets/IconContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categorywidget extends StatelessWidget {
  const Categorywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
          const  Text('Category',
            style: TextStyle(
              fontSize: SizesApp.fontLg,
              color: ColorsApp.textColor
            ),),
            const Spacer(),
            RichText(
              text: const TextSpan(text: 'See All',style: TextStyle(
                fontSize: SizesApp.fontMd,
                color: ColorsApp.primaryColor
              )),

            ),
          ],
        ),
        SizedBox(height: SizesApp.spaceBetweenItem,),
        SizedBox(
          height: 100.h,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            separatorBuilder: (context, int index) {
              return Padding(
                padding:  EdgeInsets.only(right: SizesApp.lg),
              );
            },
            itemBuilder: (context, int index) {
              return Row(
                children: [
                  Column(
                    children: [
                      IconContainer(
                        width: 75.h,
                        height: 75.h,
                        iconColor: ColorsApp.primaryColor,
                        icon: Icons.store_outlined,
                        onTap: (){},
                          color: ColorsApp.containerBackground,

                      ),
                      SizedBox(width: SizesApp.md,),
                      const Text('T-Shirt',style: TextStyle(
                        fontSize: SizesApp.fontMd,
                        color: ColorsApp.textColor
                      ),),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
