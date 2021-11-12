class ProductModel {
  final String id;
  final String name;
  final String urlPic;
  final int amount;
  final double price;
  final String description;

  ProductModel(
      {required this.id,
      required this.name,
      required this.urlPic,
      required this.amount,
      required this.price,
      required this.description});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['_id'] as String,
      name: json['nome'] as String,
      urlPic: json['urlFoto'] as String,
      amount: json['quantidade'] as int,
      price: json['preco'] as double,
      description: json['descricao'] as String,
    );
  }
}
