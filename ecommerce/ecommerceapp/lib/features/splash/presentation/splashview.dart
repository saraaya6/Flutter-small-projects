// In: lib/feaurse/Splash/presentation/splash_view.dart

import 'dart:async';
// This line tells your app where to find the HomeView screen
import 'package:ecommerceapp/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
// This line tells your app where to find the SplashBody widget
import 'widgets/splash_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // This timer will navigate to the home screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      // This replaces the splash screen with the home screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // We just need to show the body here
    return const Scaffold(
      body: SplashBody(),
    );
  }
}