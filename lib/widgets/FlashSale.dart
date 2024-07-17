import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:clothing_app_store/widgets/CodeNumberContainer.dart';
import 'package:clothing_app_store/widgets/IconContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Flash Sale',
              style: TextStyle(
                  fontSize: SizesApp.fontLg, color: ColorsApp.textColor),
            ),
            Spacer(),
            RichText(
              text: TextSpan(
                  text: 'Closing in : ',
                  style: TextStyle(
                      fontSize: SizesApp.fontSm,
                      color: ColorsApp.primaryColor)),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Spacer(),
                  Container(
                    width: 25.h,
                    height: 25.h,
                    decoration: BoxDecoration(
                        color: ColorsApp.containerBackground,
                        borderRadius:
                            BorderRadius.circular(SizesApp.borderRadiusSm)),
                    child: Center(
                        child: Text(
                      '02',
                      style: TextStyle(
                          fontSize: SizesApp.fontSmall,
                          color: ColorsApp.primaryColor),
                    )),
                  ),
                  Spacer(),
                  Text(
                    ' : ',
                    style: TextStyle(color: ColorsApp.primaryColor),
                  ),
                  Spacer(),
                  Container(
                    width: 25.h,
                    height: 25.h,
                    decoration: BoxDecoration(
                        color: ColorsApp.containerBackground,
                        borderRadius:
                            BorderRadius.circular(SizesApp.borderRadiusSm)),
                    child: Center(
                        child: Text(
                      '12',
                      style: TextStyle(
                          fontSize: SizesApp.fontSmall,
                          color: ColorsApp.primaryColor),
                    )),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: SizesApp.spaceBetweenItem,
        ),
        SizedBox(
          height: 100.h,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            separatorBuilder: (context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: SizesApp.md),
              );
            },
            itemBuilder: (context, int index) {
              return Row(
                children: [
                  IconContainer(
                    onTap: () {},
                    widget: Text(
                      'All',
                      style: TextStyle(
                          textBaseline: TextBaseline.alphabetic,
                          overflow: TextOverflow.ellipsis,
                          fontSize: SizesApp.fontMd,
                          color: ColorsApp.textColor),
                    ),
                    width: 80.h,
                    height: 40.h,
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
