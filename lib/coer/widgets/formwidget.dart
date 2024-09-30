import 'package:flutter/material.dart';
import 'package:pizaapp/coer/images_coer/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Formwidget extends StatelessWidget {
  final String hint;
  const Formwidget({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, sizinginformation) {
      if (sizinginformation.maxWidth > 600) {
        return ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(20),
                border: const OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Pallete.borderColor),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Pallete.borderColor),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Pallete.gradient1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: hint),
          ),
        );
      } else {
        return ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 350),
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(20),
                border: const OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Pallete.borderColor),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Pallete.borderColor),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Pallete.gradient1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: hint),
          ),
        );
      }
    });
  }
}
