import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/apptheme/SizesApp.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        SizedBox(
          height: 180.h,
          child: PageView.builder(
            controller: PageController(initialPage: 0),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            onPageChanged: (index) {
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  color: ColorsApp.containerBackground,
                  borderRadius: BorderRadius.circular(SizesApp.borderRadiusLg),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 9.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "New Collection",
                              style: TextStyle(
                                  fontSize: 14.h,
                                  fontWeight: FontWeight.bold,
                                  color: ColorsApp.textColor),
                            ),
                            const Spacer(),
                            Text(
                              "Discount 50% for \n the first transaction",
                              style: TextStyle(
                                  height: 1.3.h,
                                  fontSize: 12.h,
                                  fontWeight: FontWeight.w400,
                                  color: ColorsApp.secondaryColor),
                            ),
                            const Spacer(),
                            Container(
                              height: 40.h,
                              width: 130.h,
                              decoration: BoxDecoration(
                                  color:
                                  ColorsApp.primaryColor,
                                  borderRadius:
                                  BorderRadius.circular(SizesApp.borderRadiusLg)),
                              child: const Center(
                                child: Text('Shop Now',style: TextStyle(
                                  fontSize: SizesApp.fontMd,
                                  color: ColorsApp.white
                                ),),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorsApp.containerBackground),
                          borderRadius: BorderRadius.zero,
                          shape: BoxShape.rectangle,
                          // image: DecorationImage(image:AssetImage('assets/images/dress.jpg'),fit: BoxFit.contain ),

                        ),
                        child: Image.asset(

                            'assets/images/dress.jpg',

                        ),
                      ),
                    ),
                  ],
                ),

              );
            },
          ),
        ),
         SizedBox(
          height: SizesApp.md,
        ),
        Center(
          child: DotsIndicator(
            dotsCount: 5,
            position: 0,
            decorator: DotsDecorator(
              color: Colors.black26,
              activeColor: ColorsApp.primaryColor,
              spacing: const EdgeInsets.only(left: 6),
              size: const Size.square(10.0),
              activeSize: const Size.square(10),
            ),
          ),
        )
      ],
    );
  }
}
