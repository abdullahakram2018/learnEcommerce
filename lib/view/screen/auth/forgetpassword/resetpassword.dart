import 'package:ecommerce_app/controller/auth/forget_password_controller.dart';
import 'package:ecommerce_app/controller/auth/resetpssword_controller.dart';

import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_text_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_titel_text_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0.0,
        title: Text('resetpassword'.tr,
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
              text: "newpassword".tr,
            ),
            const SizedBox(height: 20),
            CustomBodyTextAuth(
              text: "bodySignIn".tr,
            ),
            const SizedBox(height: 30),
            CustomTextFormAuth(
              mycontroller: controller.password,
              hinttext: "enterpassword".tr,
              labeltext: "password".tr,
              iconData: Icons.password_outlined,
            ),
            CustomTextFormAuth(
              mycontroller: controller.repassword,
              hinttext: "reenterpassword".tr,
              labeltext: "password".tr,
              iconData: Icons.password_outlined,
            ),
            CustomButtonAuth(
              text: 'signIn'.tr,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
