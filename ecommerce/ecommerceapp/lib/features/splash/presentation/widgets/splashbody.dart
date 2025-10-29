// In: lib/feaurse/Splash/presentation/widgets/splash_body.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // <-- استيراد الحزمة الجديدة

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Background color from the design
      color: const Color(0xff003D2B), // Dark Green
      child: Stack(
        children: [
          // Centered "HUNGRY?" Text
          const Center(
            child: Text(
              'HUNGRY?',
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          // Burger image at the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset( // <-- استخدام SvgPicture بدلاً من Image
              'assets/images/splash_burger.svg', // Your SVG image
              width: MediaQuery.of(context).size.width, // Full width
            ),
          ),
        ],
      ),
    );
  }
}