import 'package:clothing_app_store/features/welcome_screen/widgets/WelcomBody.dart';
import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const WelcomBody(),
    );
  }
}
