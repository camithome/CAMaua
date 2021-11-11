class FinancesModel {
  final String id;
  final String name;
  final String option;
  final String amount;
  final double price;

  FinancesModel({
    required this.option,
    required this.amount,
    required this.id,
    required this.name,
    required this.price,
  });

  factory FinancesModel.fromJson(Map<String, dynamic> json) {
    return FinancesModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      option: json['option'] as String,
      amount: json['amount'] as String,
      price: json['price'] as double,
    );
  }
}
