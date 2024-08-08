import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/apptheme/TSpacingStyle.dart';
import 'package:clothing_app_store/features/home_screen/widgets/CategoryWidget.dart';
import 'package:clothing_app_store/features/home_screen/widgets/FeatureWidget.dart';
import 'package:clothing_app_store/features/home_screen/widgets/FlashSale.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/HeaderAppBarWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.white,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight2,
            child:  Column(
              children: [
                 HeaderAppBarWidget(),
                   FeatureWidget(),
                SizedBox(height: SizesApp.spaceBetweenSection,),
                Categorywidget(),
                SizedBox(height: SizesApp.spaceBetweenSection,),
                FlashSale(),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
