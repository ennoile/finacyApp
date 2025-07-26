import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo/common/constants/app_colors.dart';
import 'package:todo/common/constants/app_text_styles.dart';
import 'package:todo/common/widgets/multi_text_button.dart';
import 'package:todo/common/widgets/primary_button.dart';
import 'package:todo/features/splash/lista/list_view_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Column(
        children: [
          const SizedBox(height: 48.0),
          Expanded(child: Image.asset('assets/images/man.png')),
          Text(
            textAlign: TextAlign.center,
            'Your Money',
            style: AppTextStyles.midiumText.copyWith(
              color: AppColors.greenLightTwo,
            ),
          ),

          Text(
            textAlign: TextAlign.center,
            'Your Timing',
            style: AppTextStyles.midiumText.copyWith(
              color: AppColors.greenLightTwo,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 32.0,
              right: 32.0,
              top: 16.0,
              bottom: 2.0,
            ),
            child: PrimaryButton(
              text: 'Get Started',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExchangeRatesPage(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16.0),
          multiTextButton(
            onPressed: () => log('tap'),
            children: [
              Text(
                'Alredy have accout?',
                style: AppTextStyles.smallText.copyWith(color: AppColors.grey),
              ),
              Text(
                'Log in',
                style: AppTextStyles.smallText.copyWith(
                  color: AppColors.greenLightTwo,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24.0),
        ],
      ),
    );
  }
}
