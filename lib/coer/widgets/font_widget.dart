import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Fontforboth {
  Fontforboth._();
  static Text splasfont(context) {
    return Text(
      'Eat me',
      style: TextStyle(
          fontFamily: 'itali',
          fontSize: 0.20 * MediaQuery.of(context).size.width,
          fontWeight: FontWeight.w800,
          color: Colors.black),
    );
  }

  static Text loginbutton() {
    return const Text(
      'Send Otp',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }

  static Text loginbutton1(context) {
    return Text(
      'Signatuer',
      style: TextStyle(
          fontFamily: 'itali',
          fontSize: 120.r,
          fontWeight: FontWeight.w800,
          color: Colors.white),
    );
  }
}

class TextStyleforboth {
  TextStyleforboth._();
  static TextStyle hintstyle() {
    return TextStyle(
      fontSize: 18.r,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }
}
