import 'package:mobx/mobx.dart';
import 'package:treinandoreplica/app/modules/home/models/home_model.dart';
import 'package:treinandoreplica/app/modules/home/models/my_car_model.dart';
import 'package:treinandoreplica/app/modules/home/repositories/home_repository.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final HomeRepository repository;

  @observable
  List<HomeModel> listHome = [];

  HomeStoreBase(this.repository) {
    getStore();
  }

  @observable
  List<MyCarModel> myCar = [];

  @action
  Future<void> getStore() async {
    listHome = await repository.getStore();
  }

  @action
  void addToMyCar(HomeModel product) {
    if (myCar.contains((element) => element.product == product)) {
      myCar = myCar.map((element) {
        if (element.product == product) {
          return MyCarModel(amount: element.amount + 1, product: product);
        }
        return element;
      }).toList();
    } else {
      myCar.add(MyCarModel(amount: 1, product: product));
    }
  }
}
