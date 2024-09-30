import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pizaapp/coer/images_coer/colors.dart';
import 'package:pizaapp/coer/widgets/formwidget.dart';
import 'package:pizaapp/coer/widgets/gradientbutton.dart';

class WebScreenPiza extends StatelessWidget {
  const WebScreenPiza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 600) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Image.asset('Assets/images/single.png'),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 28,
                              color: Pallete.whiteColor,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Formwidget(
                          hint: "Enter Phone Number",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Gradientbutton(call: () {}, data: "Sign in"),
                        const SizedBox(
                          height: 30,
                        ),
                        const AutoSizeText(
                          "Please enter your phone number to sign in. We'll use this to verify your account.",
                          maxLines: 2,
                          maxFontSize: 18,
                          style: TextStyle(
                            color: Pallete.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      } else {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Image.asset('Assets/images/single.png')),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      const Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 28,
                            color: Pallete.whiteColor,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Formwidget(
                        hint: "Enter Phone Number",
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Gradientbutton(call: () {}, data: "Sign in"),
                      const SizedBox(
                        height: 30,
                      ),
                      const AutoSizeText(
                        "Please enter your phone number to sign in. We'll use this to verify your account.",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        minFontSize: 16,
                        style: TextStyle(
                          color: Pallete.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        );
      }
    }));
  }
}
