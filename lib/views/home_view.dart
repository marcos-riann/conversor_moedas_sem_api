import 'package:conversor_moedas/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import '../components/currency_box.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController fromCurrencyText = TextEditingController();
  TextEditingController toCurrencyText = TextEditingController();
  late HomeController homeController;

  @override
  void initState() {
    homeController = HomeController(
        fromCurrencyText: fromCurrencyText, toCurrencyText: toCurrencyText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset(
                  "assets/images/trade.png",
                  height: 200,
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: CurrencyBox(
                  controller: fromCurrencyText,
                  currencyValue: homeController.fromCurrency,
                  itens: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model!;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 30),
                child: CurrencyBox(
                  controller: toCurrencyText,
                  currencyValue: homeController.toCurrency,
                  itens: homeController.currencies,
                  onChanged: (model) {
                    setState(
                      () {
                        homeController.toCurrency = model!;
                      },
                    );
                  },
                ),
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  padding: MaterialStatePropertyAll(
                    EdgeInsetsDirectional.all(18),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    homeController.convert();
                  });
                },
                child: const Text("CONVERTER"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
