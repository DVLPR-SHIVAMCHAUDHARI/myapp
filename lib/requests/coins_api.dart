import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/web.dart';

class CoinsApi {
  final logger = Logger();

  convertCurrency({crypto, currency}) async {
    Uri url =
        Uri.parse("https://rest.coinapi.io/v1/exchangerate/$crypto/$currency");

    Map<String, String> headers = {
      'X-CoinAPI-Key': "42F9054E-2586-49F6-8414-2DC926E031AF"
    };
    try {
      http.Response response = await http.get(url, headers: headers);
      if (response.statusCode == 200) {
        logger.d(jsonDecode(response.body));
        // var data = jsonDecode(response.body);
      }
    } catch (e) {
      logger.e(e);
    }
  }
}
