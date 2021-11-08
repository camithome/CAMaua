import 'package:mobx/mobx.dart';

part 'finances_store.g.dart';

class FinancesStore = _FinancesStoreBase with _$FinancesStore;
abstract class _FinancesStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}