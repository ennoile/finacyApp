import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo/common/constants/app_colors.dart';
import 'package:todo/common/constants/app_text_styles.dart';
import 'package:todo/features/splash/onboarding/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Timer init() {
    return Timer(Duration(seconds: 2), 
    navigateToOnboarding,);
  }

  void navigateToOnboarding() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OnboardingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.greenGradient,
          ),
        ),
        child: Column(
          children: [
            Text(
              'financy',
              style: AppTextStyles.bigText.copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
