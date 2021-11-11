import 'package:mobx/mobx.dart';
import 'package:treinandoreplica/app/modules/finances/models/finances_model.dart';
import 'package:treinandoreplica/app/modules/finances/repositories/finances_repository.dart';

part 'finances_store.g.dart';

class FinancesStore = _FinancesStoreBase with _$FinancesStore;

abstract class _FinancesStoreBase with Store {
  final FinancesRepository repository;

  @observable
  List<FinancesModel> listFinances = [];

  _FinancesStoreBase(this.repository);

  @observable
  DateTime? startDate;

  @observable
  DateTime? endDate;

  @action
  Future<void> getStock() async {
    listFinances =
        await repository.getProducts(startDate: startDate, endDate: endDate);
  }

  @action
  Future<void> setStartDate(startDate) async {
    startDate = startDate;
    getStock();
  }

  @action
  Future<void> setEndDate(endDate) async {
    endDate = endDate;
    getStock();
  }
}
