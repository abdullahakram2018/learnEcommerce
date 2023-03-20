import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String textone;
  final String textwo;
  final void Function()? onTap;
  const CustomTextSignUpOrSignIn(
      {super.key, required this.textone, required this.textwo, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        InkWell(
          onTap: onTap,
          child: Text(
            textwo,
            style: const TextStyle(
                color: AppColor.primaryColor1, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
