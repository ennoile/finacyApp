import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  Future<Map<String, dynamic>> fetchExchangeRates() async {
    final url = Uri.parse(
      'https://v6.exchangerate-api.com/v6/82de31da8ae3457d74ef88ea/latest/USD',
    );
    final reponse = await http.get(url);
    if (reponse.statusCode == 200) {
      final data = jsonDecode(reponse.body);
      return data['conversion_rates'];
    } else {
      throw Exception('Erro ao retornar Cotacao!');
    }
  }
}
