import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pizaapp/coer/images_coer/splash_images.dart';
import 'package:pizaapp/coer/widgets/font_widget.dart';
import 'package:pizaapp/mobile_application/authentication_area/loginscreen/login_screen.dart';

class MobilApp extends StatefulWidget {
  const MobilApp({super.key});

  @override
  State<MobilApp> createState() => _MobilAppState();
}

class _MobilAppState extends State<MobilApp> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 2), (callback) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SplashImages.splshimage2(context, 0.2),
            Center(child: SplashImages.splasimage(context)),
            Center(
              child: Fontforboth.splasfont(context),
            ),
            Positioned(
                bottom: 10,
                right: 1,
                child: SplashImages.splshimage3(context, 0.2)),
          ],
        ),
      ),
    );
  }
}
