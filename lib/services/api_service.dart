import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  Future<Map<String, dynamic>> fetchExchangeRates(final String codigoMoeda) async {
    final url = Uri.parse(
      'https://v6.exchangerate-api.com/v6/82de31da8ae3457d74ef88ea/latest/$codigoMoeda',
    );
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return {
        'rates': data['conversion_rates'],
        'date': data['time_last_update_utc'],
      };
    } else {
      throw Exception('Erro ao retornar Cotação!');
    }
  }
}
