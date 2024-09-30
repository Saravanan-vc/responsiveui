import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizaapp/coer/widgets/font_widget.dart';

class Loginforboth extends StatefulWidget {
  const Loginforboth({super.key});
  
  @override
  State<Loginforboth> createState() => _LoginforbothState();
}

class _LoginforbothState extends State<Loginforboth> {
  //TODOthis setsate change it
  bool num = false;
  void numchnage() {
    setState(() {
      num = !num;
    });
  }

  void numchangeit() {
    setState(() {
      num = false;
    });
  }
  //TODOchange it
  @override
  Widget build(BuildContext context) {
    double A = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.10 * A),
      height: 180,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(width: 0.8, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          TextFormField(
            decoration: InputDecoration(
                suffixIcon: num
                    ? const Icon(
                        Icons.check_circle_outline_rounded,
                        color: Colors.green,
                      )
                    : null,
                counterText: '',
                border: const OutlineInputBorder(
                    borderSide: BorderSide(width: 0.8, color: Colors.black)),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 0.8, color: Colors.black)),
                hintText: "Phone Number"),
            style: TextStyleforboth.hintstyle(),
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            keyboardType: TextInputType.number,
            maxLength: 10,
            onChanged: (value) {
              value.length <= 9 ? numchangeit() : numchnage();
            },
          ),
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            // onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ),),
            child: Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(child: Fontforboth.loginbutton()),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
