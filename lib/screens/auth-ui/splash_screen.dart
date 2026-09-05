
import 'package:e_com_practice/screens/main-screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Lottie.asset(
          'assets/images/splash_screen.json',
          width: 300,
          height: 300,
          fit: BoxFit.contain,
          repeat: false,
          onLoaded: (composition) {
            Future.delayed(composition.duration, () {
              if (!mounted) return;

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const MainScreen(),
                ),
              );
            });
          },
        ),
      ),
    );
  }
}