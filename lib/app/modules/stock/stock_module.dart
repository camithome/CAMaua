import 'package:mobx/mobx.dart';
import 'package:treinandoreplica/app/modules/stock/stock_Page.dart';
import 'package:treinandoreplica/app/modules/stock/stock_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StockModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => StockStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => StockPage()),
  ];

 

}
