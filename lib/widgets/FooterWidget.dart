import 'package:clothing_app_store/utils/apptheme/SizesApp.dart';
import 'package:clothing_app_store/widgets/IconContainer.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconContainer(
          onTap: (){},
          path: 'assets/icons/google.png',

        ),
         SizedBox(
          width:SizesApp.md,
        ),
        IconContainer(
          onTap: (){},
          path: 'assets/icons/google.png',
        ),
        SizedBox(
          width:SizesApp.md,
        ),
        IconContainer(
          onTap: (){},
          path: 'assets/icons/facebookpng.png',
        )
      ],
    );
  }
}
