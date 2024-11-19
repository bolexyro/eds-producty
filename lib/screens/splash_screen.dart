import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/screens/auth_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1)).then((_) {
      if (context.mounted) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AuthScreen(),
          ),
        );
      }
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 250,
            height: 100,
            child: SvgPicture.asset('assets/illustrations/wordmark.svg'),
          ),
        ),
      ),
    );
  }
}
