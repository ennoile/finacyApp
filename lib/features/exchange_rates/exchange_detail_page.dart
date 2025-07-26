import 'package:flutter/material.dart';
import 'package:todo/common/constants/app_colors.dart';
import 'package:todo/common/constants/app_text_styles.dart';

class ExchangeDetailPage extends StatelessWidget {
  final String currency;
  final dynamic rate;
  final String date; // NOVO

  const ExchangeDetailPage({
    super.key,
    required this.currency,
    required this.rate,
    required this.date, // NOVO
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes: $currency')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.monetization_on, size: 80, color: Colors.green),
            const SizedBox(height: 24),
            Text(
              'Moeda: $currency',
              style: AppTextStyles.midiumText.copyWith(
                color: AppColors.greenLightTwo,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Taxa atual: $rate',
              style: AppTextStyles.smallText.copyWith(color: AppColors.grey),
            ),
            const SizedBox(height: 16),
            Text(
              'Data da Cotação: $date',
              style: AppTextStyles.smallText.copyWith(color: AppColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
