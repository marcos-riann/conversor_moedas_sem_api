import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

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
                child: DropdownButton(
                  isExpanded: true,
                  iconEnabledColor: Colors.amber,
                  iconSize: 28,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 1,
                      child: Text("real"),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text("dolar"),
                    ),
                  ],
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(left: 5, right: 15),
            child: TextField(
              decoration: InputDecoration(
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
