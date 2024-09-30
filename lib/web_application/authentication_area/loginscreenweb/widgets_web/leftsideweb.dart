import 'package:flutter/material.dart';
import 'package:pizaapp/coer/images_coer/splash_images.dart';
import 'package:pizaapp/coer/widgets/font_widget.dart';

class Leftsideweb extends StatelessWidget {
  final double A;
  const Leftsideweb({super.key, required this.A});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Center(
                child: SplashImages.loginimage(A, constraints.maxWidth),
              );
            },
          ),
        ),
        Center(child: Fontforboth.loginbutton1(context)),
      ],
    );
  }
}
