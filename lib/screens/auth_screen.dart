import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:myapp/components/login_signup_modal.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 44, 
                      width: 44,
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/icons/headphones.svg'),
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  'assets/illustrations/illustration.svg',
                  width: 269,
                ),
                const Gap(35),
                const Text(
                  'Boost Your Productivity, Simplify Your Day',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                const Gap(40),
                const LoginSignupModal(),
                const Gap(40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
