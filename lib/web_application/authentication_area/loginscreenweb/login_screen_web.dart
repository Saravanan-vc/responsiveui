import 'package:flutter/material.dart';
import 'package:pizaapp/web_application/authentication_area/loginscreenweb/widgets_web/leftsideweb.dart';
import 'package:pizaapp/web_application/authentication_area/loginscreenweb/widgets_web/rightsideweb.dart';

class LoginScreenWeb extends StatelessWidget {
  const LoginScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Row(
        children: [Leftsideweb(A: 0.8), Rightsideweb()],
      ),
    );
  }
}
