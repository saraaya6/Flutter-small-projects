import 'package:ecommerceapp/features/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(e_commerceApp());
}
// ignore: camel_case_types
class e_commerceApp extends StatelessWidget {
  const e_commerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),

    );
  }
}