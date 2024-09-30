import 'package:flutter/material.dart';
import 'package:pizaapp/coer/widgets/loginforboth.dart';
import 'package:pizaapp/web_application/authentication_area/loginscreenweb/widgets_web/leftsideweb.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Leftsideweb( A: 2,), Loginforboth(), Spacer()],
      ),
    );
  }
}
