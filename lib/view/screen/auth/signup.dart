import 'package:ecommerce_app/controller/auth/signup_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_text_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_titel_text_auth.dart';

import 'package:ecommerce_app/view/widget/auth/text_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0.0,
        title: Text('signup'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            CustomTitelTextAuth(
              text: "welcomeBack".tr,
            ),
            const SizedBox(height: 20),
            CustomBodyTextAuth(
              text: "bodySignIn".tr,
            ),
            const SizedBox(height: 30),
            CustomTextFormAuth(
              mycontroller: controller.username,
              hinttext: "enter".tr + "username".tr,
              labeltext: "username".tr,
              iconData: Icons.person_outline_outlined,
            ),
            CustomTextFormAuth(
              mycontroller: controller.email,
              hinttext: "enter".tr + "email".tr,
              labeltext: "email".tr,
              iconData: Icons.email_outlined,
            ),
            CustomTextFormAuth(
              mycontroller: controller.phone,
              hinttext: "enter".tr + "phone".tr,
              labeltext: "phone".tr,
              iconData: Icons.phone_android_outlined,
            ),
            CustomTextFormAuth(
              mycontroller: controller.password,
              hinttext: "enter".tr + "password".tr,
              labeltext: "password".tr,
              iconData: Icons.lock_outline,
            ),
            CustomButtonAuth(
              text: 'signIn'.tr,
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            CustomTextSignUpOrSignIn(
                textone: "have".tr + "account".tr + "que".tr,
                textwo: "signIn".tr,
                onTap: () {
                  controller.goToSignIn();
                })
          ],
        ),
      ),
    );
  }
}
