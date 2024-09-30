import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizaapp/coer/images_coer/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Pressme extends StatelessWidget {
  final String asset;
  final String label;
  final double hori;
  final double mbol;

  Pressme(
      {super.key,
      required this.asset,
      required this.label,
      this.hori = 100,
      this.mbol = 80});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizinginformation) {
      if (sizinginformation.isDesktop) {
        return TextButton.icon(
          onPressed: () {},
          label: Text(
            label,
            style: const TextStyle(color: Pallete.whiteColor, fontSize: 17),
          ),
          icon: SvgPicture.asset(
            asset,
            width: 25,
            color: Pallete.whiteColor,
          ),
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: hori),
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Pallete.borderColor, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
        );
      } else {
        return SizedBox(
          width: 350,
          child: TextButton.icon(
            onPressed: () {},
            label: Text(
              label,
              style: const TextStyle(color: Pallete.whiteColor, fontSize: 17),
            ),
            icon: SvgPicture.asset(
              asset,
              width: 25,
              color: Pallete.whiteColor,
            ),
            style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20),
                shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Pallete.borderColor, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
        );
      }
    });
  }
}
