import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/apptheme/TSpacingStyle.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/VerifiedEmailAccount.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/FormCompleteProfile.dart';
import 'package:clothing_app_store/widgets/HeaderWidget.dart';
import 'package:clothing_app_store/core/widgets/IconContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.white,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: TSpacingStyle.paddingWithAppBarHeight2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconContainer(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifiedEmailAccount()));

                    },
                    icon: Icons.arrow_back_outlined,
                  ),
                  HeaderWidget(
                    tittle: 'Complete Your profile',
                    message: "Don't worry, only can see your personal \n data. No one else will be able to see it. ",
                  ),
                  SizedBox(
                    height: SizesApp.spaceBetweenItem,
                  ),
                  SizedBox(
                    width: 220.h,
                    height: 220.h,
                    child: Stack(
                      children: [
                        PositionedDirectional(
                          height: 160.h,
                          width: 160.h,
                          bottom: 10.h,
                          end: 5.h,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(image:
                              AssetImage('assets/icons/user.png'),
                              ),
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(100.h)
                            ),
                            // child: Icon(Icons.person , size: SizesApp.iconSize,color: ColorsApp.secondaryColor,),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 0,
                          child: IconContainer(
                            onTap: () {  },
                          iconColor: ColorsApp.white,
                            icon: Icons.edit,
                          color: ColorsApp.primaryColor,),
                        ),
                      ],
                    ),
                  ),
                  FormCompleteProfile(),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
