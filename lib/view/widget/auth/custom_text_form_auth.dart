import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  const CustomTextFormAuth(
      {super.key,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: TextFormField(
        controller: mycontroller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(fontSize: 14),
          hintText: hinttext,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(labeltext)),
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
