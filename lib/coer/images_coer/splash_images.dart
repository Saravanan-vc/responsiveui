import 'package:flutter/material.dart';

Widget splashimage =
    Image.asset("Assets/images/splash_pizza-removebg-preview.png");

class SplashImages {
  SplashImages._();
  static Image splasimage(context) {
    return Image.asset("Assets/images/splash_pizza-removebg-preview.png",
        height: 0.6 * MediaQuery.of(context).size.width);
  }

  static Image splshimage2(context, double a) {
    return Image.asset(
        "Assets/images/slice-of-sauce-ketchup-packaging-1-600x600-removebg-preview.png",
        height: a * MediaQuery.of(context).size.width);
  }

  static Image splshimage3(context, double a) {
    return Image.asset(
        'Assets/images/squeeze-bottles-wooden-surface-mockup_7956-1093-removebg-preview.png',
        height: a * MediaQuery.of(context).size.width);
  }

  static Image loginimage(double A, double B) {
    return Image.asset(
      "Assets/images/35-pizza-png-image.png",
      height: A * B,
    );
  }
}
