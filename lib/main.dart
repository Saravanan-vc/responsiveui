import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pizaapp/coer/images_coer/colors.dart';
// import 'package:pizaapp/mobile_application/authentication_area/splas_screen.dart';
// import 'package:pizaapp/web_application/authentication_area/splas_sreen_web.dart';
// import 'package:pizaapp/web_scree_youtube.dart';
import 'package:pizaapp/web_screen_piza.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
            themeMode: ThemeMode.system,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: Pallete.backgroundColor,
            ),
            home: const WebScreenPiza());
      },
    );
  }
}

class Responsive extends StatelessWidget {
  final Widget mobileApp;
  final Widget webApp;
  const Responsive({super.key, required this.mobileApp, required this.webApp});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth > 600 ? webApp : mobileApp;
    });
  }
}
