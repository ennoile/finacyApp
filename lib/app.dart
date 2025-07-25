import 'package:flutter/material.dart';
import 'package:todo/common/themes/default_theme.dart';
import 'package:todo/features/sign_up/sign_up_page.dart';
import 'package:todo/features/splash/lista/list_view_page.dart';
import 'package:todo/features/splash/onboarding/onboarding_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: defaulTheme, home: ExchangeRatesPage());
  }
}
