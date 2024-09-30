import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pizaapp/coer/images_coer/splash_images.dart';
import 'package:pizaapp/coer/widgets/font_widget.dart';
import 'package:pizaapp/web_application/authentication_area/loginscreenweb/login_screen_web.dart';

class WebApp extends StatefulWidget {
  const WebApp({super.key});

  @override
  State<WebApp> createState() => _WebAppState();
}

class _WebAppState extends State<WebApp> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 2), (callback) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginScreenWeb()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
    );
  }
}
