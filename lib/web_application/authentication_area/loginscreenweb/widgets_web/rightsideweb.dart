import 'package:flutter/material.dart';
import 'package:pizaapp/coer/widgets/loginforboth.dart';

class Rightsideweb extends StatelessWidget {
  const Rightsideweb({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Loginforboth()],
            ),
          );
  }
}