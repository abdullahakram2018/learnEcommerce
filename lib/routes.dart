import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/verfiycode.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/success_signup.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';

import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // OnBoarding
  AppRoute.onBoarding: (context) => const OnBoarding(),
  // Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfirCode(),
  AppRoute.resetPassword: (csontext) => const ResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
};
