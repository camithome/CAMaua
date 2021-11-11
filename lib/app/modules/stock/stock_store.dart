import 'package:mobx/mobx.dart';
import 'package:treinandoreplica/app/modules/stock/models/product_model.dart';
import 'package:treinandoreplica/app/modules/stock/repositories/stock_repository.dart';

part 'stock_store.g.dart';

class StockStore = _StockStoreBase with _$StockStore;

abstract class _StockStoreBase with Store {
  final StockRepository repository;

  @observable
  List<ProductModel> listStock = [];

  _StockStoreBase(this.repository) {
    getStock();
  }

  Future<void> getStock() async {
    listStock = await repository.getProducts();
  }
}
