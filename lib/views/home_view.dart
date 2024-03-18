import 'package:flutter/material.dart';

import '../components/currency_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
              const Padding(
                padding: EdgeInsets.only(top: 80),
                child: CurrencyBox(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 30),
                child: CurrencyBox(),
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
                onPressed: () {},
                child: const Text("CONVERTER"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
