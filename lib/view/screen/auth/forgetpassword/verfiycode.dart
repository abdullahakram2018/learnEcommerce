import 'package:ecommerce_app/controller/auth/forget_password_controller.dart';
import 'package:ecommerce_app/controller/auth/verfiycode_controller.dart';

import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_text_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button_auth.dart';

import 'package:ecommerce_app/view/widget/auth/custom_titel_text_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerfirCode extends StatelessWidget {
  const VerfirCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerfiyCodeControllerImp controller = Get.put(VerfiyCodeControllerImp());
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
            const SizedBox(height: 20),
            CustomTitelTextAuth(text: "checkcode".tr),
            const SizedBox(height: 10),
            CustomBodyTextAuth(text: "sabtitelverfiycode".tr),
            const SizedBox(height: 15),
            OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(20.0),
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToResetPassword();
              }, // end onSubmit
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
