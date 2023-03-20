import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Image.asset(
        AppImageAssets.logoProject,
      ),
    );
  }
}
