class HomeModel {
  final String id;
  final String name;
  final String urlPic;
  final List<String> options;
  final double price;

  HomeModel({
    required this.options,
    required this.id,
    required this.name,
    required this.urlPic,
    required this.price,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      urlPic: json['urlPic'] as String,
      price: json['price'] as double,
      options: (json['options'] as List).map((e) => e as String).toList(),
    );
  }
}
