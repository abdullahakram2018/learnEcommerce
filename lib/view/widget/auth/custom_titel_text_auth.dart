import 'package:flutter/material.dart';

class CustomTitelTextAuth extends StatelessWidget {
  final String text;
  const CustomTitelTextAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
