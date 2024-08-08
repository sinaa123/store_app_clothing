import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:clothing_app_store/core/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

class CustomeTextFiled extends StatelessWidget {
  const CustomeTextFiled(
      {super.key, this.textInputType,
        this.suffecxIcon, this.prefixIcon, this.onSave,
        this.onChange, this.maxLine, this.textInputAction, this.hintText,
        this.obscureText});

  final TextInputType? textInputType;
  final Widget ? suffecxIcon, prefixIcon;
  final ValueSetter? onSave, onChange;
  final int ? maxLine;
  final TextInputAction? textInputAction;
  final String? hintText;
   final bool?  obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        bottom: SizeConfig.defaultSize! * 1,
        top: SizeConfig.defaultSize! * 1,
        start: SizeConfig.defaultSize! * 2,
        end: SizeConfig.defaultSize! * 2,


      ),
      child: TextFormField(
        obscureText:  obscureText ?? false,
        autocorrect: true,
        autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: textInputType,
          onChanged: onChange,
          textInputAction: textInputAction ?? TextInputAction.next,
          onSaved: onSave,
          maxLines: maxLine,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(SizesApp.sm),
              filled: true,
              enabled: true,
            hintStyle: TextStyle(
                color: Colors.grey.shade500, fontSize: SizesApp.fontSm),
              hintText: hintText,
              suffixIcon: suffecxIcon,
              prefixIcon: prefixIcon,
              fillColor: Colors.transparent,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(SizesApp.borderRadiusLarge)),
                  borderSide: BorderSide(
                      color: ColorsApp.borderColor,
                    width: 1
                  )

              ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(SizesApp.borderRadiusLarge)),
          borderSide: BorderSide(
              color: ColorsApp.borderColor,
              width: 1
          )

      ),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(SizesApp.borderRadiusLarge)),
          borderSide: BorderSide(
              color: ColorsApp.redColor,
              width: 1
          )

      ),
      ),

      ),
    );
  }
}
