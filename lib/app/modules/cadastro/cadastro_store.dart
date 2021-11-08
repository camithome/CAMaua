import 'package:mobx/mobx.dart';

part 'cadastro_store.g.dart';

class CadastroStore = _CadastroStoreBase with _$CadastroStore;
abstract class _CadastroStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}