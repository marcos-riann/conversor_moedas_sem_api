class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1, dolar: 0.20, euro: 0.18, bitcoin: 0.0000030),
      CurrencyModel(
          name: 'Dolar', real: 5.03, dolar: 1, euro: 0.92, bitcoin: 0.000015),
      CurrencyModel(
          name: 'Euro', real: 5.46, dolar: 1.09, euro: 1, bitcoin: 0.000016),
      CurrencyModel(
          name: 'Bitcoin',
          real: 338.147,
          dolar: 67.352,
          euro: 61.952,
          bitcoin: 1)
    ];
  }
}
