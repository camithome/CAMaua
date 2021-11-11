import 'package:dio/dio.dart';
import 'package:treinandoreplica/app/modules/home/models/home_model.dart';

class HomeRepository {
  final Dio client;

  HomeRepository(this.client);

  Future<List<HomeModel>> getStore() async {
    var res = await client.get('/store');
    var list = res.data as List;
    return list
        .map((e) => HomeModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
