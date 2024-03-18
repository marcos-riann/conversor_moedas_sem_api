import 'package:conversor_moedas/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final TextEditingController controller;
  final List<CurrencyModel> itens;
  final CurrencyModel currencyValue;
  final void Function(CurrencyModel? model)? onChanged;

  const CurrencyBox({super.key, required this.controller, required this.itens, required this.onChanged, required this.currencyValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const SizedBox(
                height: 17,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 5),
                child: DropdownButton<CurrencyModel>(
                  value: currencyValue,
                  isExpanded: true,
                  iconEnabledColor: Colors.amber,
                  iconSize: 28,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  items: itens
                      .map((e) =>
                          DropdownMenuItem(value: e, child: Text(e.name)))
                      .toList(),
                  onChanged: onChanged,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 15),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
