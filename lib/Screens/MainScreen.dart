import 'package:clothing_app_store/utils/apptheme/ColorsApp.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: Center(
        child: Text('Main Screen'),
      ),
    );
  }
}
