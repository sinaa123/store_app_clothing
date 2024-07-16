import 'package:flutter/material.dart';

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
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: _selectedCountryCode,
        items: [
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
    );
  }
}