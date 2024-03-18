import 'package:conversor_moedas/controllers/home_controller.dart';
import 'package:conversor_moedas/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TextEditingController fromCurrencyText = TextEditingController();
  TextEditingController toCurrencyText = TextEditingController();

  HomeController homeController = HomeController(
      fromCurrencyText: fromCurrencyText, toCurrencyText: toCurrencyText);

  test("deve converter de real para dolar", () {
    fromCurrencyText.text = '1,5';
    homeController.convert();
    expect(toCurrencyText.text, '0.30');
  });

  test('deve converter de dolar para real', () {
    fromCurrencyText.text = '1';
    homeController.fromCurrency = CurrencyModel(
        name: 'Dolar', real: 5.03, dolar: 1, euro: 0.92, bitcoin: 0.000015);
    homeController.toCurrency = CurrencyModel(
        name: 'Real', real: 1, dolar: 0.20, euro: 0.18, bitcoin: 0.0000030);
    homeController.convert();
    expect(toCurrencyText.text, '5.03');
  });
}
