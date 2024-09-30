import 'package:flutter/material.dart';
import 'package:pizaapp/coer/images_coer/colors.dart';
import 'package:pizaapp/coer/widgets/formwidget.dart';
import 'package:pizaapp/coer/widgets/gradientbutton.dart';
import 'package:pizaapp/coer/widgets/pressme.dart';

class WebScreeYoutube extends StatelessWidget {
  const WebScreeYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            Image.asset("Assets/images/balls.png"),
            const Text(
              'Sign in.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Pallete.whiteColor),
            ),
            const SizedBox(
              height: 50,
            ),
            Pressme(
              asset: "Assets/images/google.svg",
              label: 'Continue with Google',
            ),
            const SizedBox(
              height: 20,
            ),
            Pressme(
                asset: "Assets/images/face.svg",
                label: 'Continue with Facebook',
                mbol: 70,
                hori: 90),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'or',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Pallete.whiteColor,
                  fontSize: 17),
            ),
            const SizedBox(
              height: 15,
            ),
            const Formwidget(
              hint: "Email",
            ),
            const SizedBox(
              height: 15,
            ),
            const Formwidget(
              hint: "Password",
            ),
            const SizedBox(
              height: 20,
            ),
            Gradientbutton(call: () {}, data: "Sign in")
          ],
        ),
      ),
    );
  }
}
