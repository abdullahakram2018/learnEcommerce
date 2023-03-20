import 'package:ecommerce_app/controller/auth/login_cntroller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_text_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_titel_text_auth.dart';
import 'package:ecommerce_app/view/widget/auth/logo_auth.dart';
import 'package:ecommerce_app/view/widget/auth/text_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0.0,
        title: Text('signIn'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const LogoAuth(),
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
            CustomTextFormAuth(
              mycontroller: controller.password,
              hinttext: "enter".tr + "password".tr,
              labeltext: "password".tr,
              iconData: Icons.lock_outline,
            ),
            InkWell(
              onTap: () {
                controller.goToForgetPassword();
              },
              child: Text(
                "forgetPassword".tr,
                textAlign: TextAlign.end,
              ),
            ),
            CustomButtonAuth(
              text: 'signIn'.tr,
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            CustomTextSignUpOrSignIn(
                textone: "dont".tr + "have".tr + "account".tr + "que".tr,
                textwo: "signup".tr,
                onTap: () {
                  controller.goToSignUp();
                })
          ],
        ),
      ),
    );
  }
}
