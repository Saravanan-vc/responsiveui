import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pizaapp/coer/images_coer/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Gradientbutton extends StatelessWidget {
  final String data;
  final VoidCallback call;
  const Gradientbutton({super.key, required this.call, required this.data});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, SizingInformation) {
      if (SizingInformation.maxWidth > 600) {
        return Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(colors: [
                Pallete.gradient1,
                Pallete.gradient2,
                Pallete.gradient3
              ])),
          child: ElevatedButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 172.8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            onPressed: call,
            child: AutoSizeText(
              data,
              maxFontSize: 20,
              maxLines: 1,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      } else {
        return Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(colors: [
                Pallete.gradient1,
                Pallete.gradient2,
                Pallete.gradient3
              ])),
          child: ElevatedButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 147.8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            onPressed: call,
            child: AutoSizeText(
              data,
              maxFontSize: 20,
              maxLines: 1,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      }
    });
  }
}
