import 'package:clothing_app_store/core/apptheme/ColorsApp.dart';
import 'package:clothing_app_store/core/apptheme/SizesApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryCodePicker extends StatefulWidget {
  final Function(String) onCountryCodeSelected;

  const CountryCodePicker({Key? key, required this.onCountryCodeSelected})
      : super(key: key);

  @override
  _CountryCodePickerState createState() => _CountryCodePickerState();
}

class _CountryCodePickerState extends State<CountryCodePicker> {
  String _selectedCountryCode = '+1'; // Default to US country code

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65.h,
      child: Row(

        children: [
          const Spacer(),
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              dropdownColor: ColorsApp.white,
              elevation: 2,
              borderRadius: BorderRadius.circular(SizesApp.borderRadiusMd),
              style: const TextStyle(
                color: ColorsApp.secondaryColor,
                fontSize: SizesApp.fontSm
              ),
              value: _selectedCountryCode,
              items: const [
                DropdownMenuItem(value: '+1', child: Text('+1')),
                DropdownMenuItem(value: '+44', child: Text('+44')),
                DropdownMenuItem(value: '+91', child: Text('+91')),
                // Add more country codes as needed
              ],
              onChanged: (value) {
                setState(() {
                  _selectedCountryCode = value!;
                });
                widget.onCountryCodeSelected(value!);
              },
            ),
          ),
          const Spacer(),
          Container(
            width: 1.0,
            height: 24.0,
            color: ColorsApp.secondaryColor,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}