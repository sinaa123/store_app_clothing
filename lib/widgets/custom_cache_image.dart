import 'package:flutter/material.dart';

class CustomCacheImage extends StatelessWidget {
  final String? imageUrl;
  const CustomCacheImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl!,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height
    );
  }
}