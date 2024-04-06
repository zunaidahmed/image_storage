import 'package:firebase_image_storage/splash_screen.dart';
import 'package:flutter/material.dart';


class MyImageStorage extends StatelessWidget {
  const MyImageStorage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: SplashScreen(
      ),
    );

  }
}
