import 'package:flutter/material.dart';
import 'package:myapp/models/CoinsDataModel.dart';
import 'package:myapp/requests/coins_api.dart';

class Coinscontroller extends ChangeNotifier {
  static Coinscontroller instance = Coinscontroller.internal();
  Coinscontroller.internal();
  factory Coinscontroller() => instance;

  String selectedCurrency = "INR";
  set updateCurrency(value) {
    selectedCurrency = value;
    notifyListeners();
  }

  CoinsDataModel? btc;
  CoinsDataModel? eth;
  CoinsDataModel? ltc;

  fetchCoinData() async {
    await CoinsApi().convertCurrency(crypto: "BTC", currency: selectedCurrency);
    await CoinsApi().convertCurrency(crypto: "ETH", currency: selectedCurrency);
    await CoinsApi().convertCurrency(crypto: "LTC", currency: selectedCurrency);
  }
}
