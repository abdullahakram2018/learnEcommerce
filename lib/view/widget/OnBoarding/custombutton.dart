import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        padding: const EdgeInsets.symmetric(
          horizontal: 100,
          vertical: 10,
        ),
        textColor: AppColor.white,
        color: AppColor.primaryColor,
        child: const Text("Continue"),
      ),
    );
  }
}
