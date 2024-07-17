import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/utils/apptheme/TSpacingStyle.dart';
import 'package:clothing_app_store/widgets/IconContainer.dart';
import 'package:flutter/material.dart';

class LocationAccessScreen extends StatelessWidget {
  const LocationAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconContainer(onTap: (){},
                  icon: Icons.location_on,
                  color: Colors.grey.shade200,
                  iconColor: ColorsApp.primaryColor,
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
