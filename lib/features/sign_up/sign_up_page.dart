import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo/common/constants/app_colors.dart';
import 'package:todo/common/constants/app_text_styles.dart';
import 'package:todo/common/widgets/multi_text_button.dart';
import 'package:todo/common/widgets/primary_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'Your Money',
            textAlign: TextAlign.center,
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
          Image.asset('assets/images/sign_up_page.png'),
          Form(child: Column(children: [CustomTextFormField()])),
          Padding(
            padding: const EdgeInsets.only(
              left: 32.0,
              right: 32.0,
              top: 16.0,
              bottom: 2.0,
            ),
            child: PrimaryButton(text: 'Sign Up', onPressed: () => log('tap')),
          ),
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
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final defaultBorder = const OutlineInputBorder();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        labelText: 'Your Name',
        border: defaultBorder,
        focusedBorder: defaultBorder,
        errorBorder: defaultBorder,
        focusedErrorBorder: defaultBorder,
        enabledBorder: defaultBorder,
        disabledBorder: defaultBorder,
      ),
    );
  }
}
