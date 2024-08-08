import 'package:clothing_app_store/core/widgets/IconContainer.dart';
import 'package:clothing_app_store/core/widgets/SpaceWidget.dart';
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
        SpaceHorizentalWidget(value: 3,),
        IconContainer(
          onTap: (){},
          path: 'assets/icons/google.png',
        ),
        SpaceHorizentalWidget(value: 3,),
        IconContainer(
          onTap: (){},
          path: 'assets/icons/google.png',
        )
      ],
    );
  }
}
