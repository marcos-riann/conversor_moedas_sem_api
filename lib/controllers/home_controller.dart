import 'package:conversor_moedas/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  final TextEditingController fromCurrencyText;
  final TextEditingController toCurrencyText;
  late List<CurrencyModel> currencies;

  late CurrencyModel fromCurrency;
  late CurrencyModel toCurrency;

  HomeController(
      {required this.fromCurrencyText, required this.toCurrencyText}) {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    String text = fromCurrencyText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1;
    double result = 0;

    switch (toCurrency.name) {
      case 'Real':
        result = value * fromCurrency.real;
        break;
      case 'Dolar':
        result = value * fromCurrency.dolar;
        break;
      case 'Euro':
        result = value * fromCurrency.euro;
        break;
      case 'Bitcoin':
        result = value * fromCurrency.bitcoin;
        break;
      default:
    }

    toCurrencyText.text = result.toStringAsFixed(2);
  }
}
