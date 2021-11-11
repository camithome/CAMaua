import 'package:dio/dio.dart';
import 'package:treinandoreplica/app/modules/stock/models/product_model.dart';

class StockRepository {
  final Dio client;

  StockRepository(this.client);

  Future<List<ProductModel>> getProducts() async {
    var res = await client.get('/produto');
    var list = res.data as List;
    return list
        .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
