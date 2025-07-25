import 'package:flutter/material.dart';
import 'package:todo/common/constants/app_colors.dart';
import 'package:todo/common/constants/app_text_styles.dart';
import 'package:todo/common/services/api_service.dart';
import 'exchange_detail_page.dart';

class ExchangeRatesPage extends StatefulWidget {
  const ExchangeRatesPage({super.key});

  @override
  State<ExchangeRatesPage> createState() => _ExchangeRatesPageState();
}

class _ExchangeRatesPageState extends State<ExchangeRatesPage> {
  final ApiService _apiService = ApiService();
  final Map<String, dynamic> _apiData = {};

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final data = await _apiService.fetchExchangeRates();
      setState(() {
        _apiData.addAll(data);
      });
    } catch (_) {
      setState(() {
        _apiData['error'] = 'Erro ao carregar os dados.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cotações Financeiras')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 20),
          Center(
            child: Image.asset(
              'assets/images/money_icon.png',
              height: 150,
              width: 150,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Cotações',
            textAlign: TextAlign.center,
            style: AppTextStyles.midiumText.copyWith(
              color: AppColors.greenLightTwo,
            ),
          ),
          const SizedBox(height: 12),
          if (_apiData.isEmpty)
            const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircularProgressIndicator(),
              ),
            )
          else
            ..._apiData.entries.map((entry) {
              final currency = entry.key;
              final value = entry.value;
              return Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: ListTile(
                  leading: const Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.green,
                  ),
                  title: Text(currency),
                  subtitle: Text('1 EUR = $value $currency'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ExchangeDetailPage(currency: currency, rate: value),
                      ),
                    );
                  },
                ),
              );
            }),
        ],
      ),
    );
  }
}
