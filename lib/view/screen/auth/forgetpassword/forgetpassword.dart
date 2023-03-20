import 'package:ecommerce_app/controller/auth/forget_password_controller.dart';

import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_text_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_titel_text_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0.0,
        title: Text('forgetPassword'.tr,
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
              mycontroller: controller.email,
              hinttext: "enter".tr + "email".tr,
              labeltext: "email".tr,
              iconData: Icons.email_outlined,
            ),
            CustomButtonAuth(
              text: 'signIn'.tr,
              onPressed: () {
                controller.goToVerfiyCode();
              },
            ),
          ],
        ),
      ),
    );
  }
}
