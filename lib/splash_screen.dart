import 'package:firebase_image_storage/grid_view_images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    hideScreen();
  }

 Future <void> hideScreen()  async {
    Future.delayed(const Duration(milliseconds: 5000), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const GridViewImage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network("https://w7.pngwing.com/pngs/67/315/png-transparent-flutter-hd-logo-thumbnail.png", width: 100,height: 100,),

        ),
      );

  }
}
