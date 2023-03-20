import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/localization/changelocal.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/routes.dart';

import 'package:ecommerce_app/view/screen/onboarding.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
          bodyText1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColor.grey,
          ),
        ),
        primarySwatch: Colors.blue,
        backgroundColor: AppColor.white,
      ),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
