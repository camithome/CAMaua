import 'package:mobx/mobx.dart';

part 'stock_store.g.dart';

class StockStore = _StockStoreBase with _$StockStore;
abstract class _StockStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}