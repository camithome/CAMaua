import 'package:dio/dio.dart';
import 'package:treinandoreplica/app/modules/finances/models/finances_model.dart';

class FinancesRepository {
  final Dio client;

  FinancesRepository(this.client);

  Future<List<FinancesModel>> getProducts(
      {DateTime? startDate, DateTime? endDate}) async {
    var res = await client.get('/finances',
        queryParameters: {'startDate': startDate, 'endDate': endDate});
    var list = res.data as List;
    return list
        .map((e) => FinancesModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
