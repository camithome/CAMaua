class ProductModel {
  final String id;
  final String name;
  final String model;
  final String urlPic;
  final int amount;
  final double price;
  final String description;

  ProductModel(
      {required this.id,
      required this.name,
      required this.model,
      required this.urlPic,
      required this.amount,
      required this.price,
      required this.description});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      model: json['model'] as String,
      urlPic: json['urlPic'] as String,
      amount: json['amount'] as int,
      price: json['price'] as double,
      description: json['description'] as String,
    );
  }
}
