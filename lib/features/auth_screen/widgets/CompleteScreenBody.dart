import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:clothing_app_store/core/widgets/IconContainer.dart';
import 'package:clothing_app_store/core/widgets/SpaceWidget.dart';
import 'package:clothing_app_store/features/auth_screen/presentation/password_screen/VerifiedEmailAccount.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/FormCompleteProfile.dart';
import 'package:clothing_app_store/features/auth_screen/widgets/HeaderWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompleteScreenBody extends StatelessWidget {
  const CompleteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: SizeConfig.defaultSize! * 10,
                start: SizeConfig.defaultSize! * 2,
                end: SizeConfig.defaultSize! * 2,
                bottom: SizeConfig.defaultSize! * 2,
              ),
              child: IconContainer(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifiedEmailAccount()));

                },
                icon: Icons.arrow_back_outlined,
              ),
            ),
            HeaderWidget(
              tittle: 'Complete Your profile',
              message: "Don't worry, only can see your personal \n data. No one else will be able to see it. ",
            ),
            SizedBox(
              width:SizeConfig.defaultSize! * 30,
              height: SizeConfig.defaultSize! * 25,
              child: Stack(
                children: [
                  PositionedDirectional(
                    width:SizeConfig.defaultSize! * 15,
                    height: SizeConfig.defaultSize! * 15,
                    bottom: SizeConfig.defaultSize! * 5,
                    end: SizeConfig.defaultSize! * 2,
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
                    bottom: SizeConfig.defaultSize! * 5,
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
    );
  }
}
