import 'package:dio/dio.dart';

import 'package:treinandoreplica/app/modules/stock/repositories/stock_repository.dart';
import 'package:treinandoreplica/app/modules/stock/stock_Page.dart';
import 'package:treinandoreplica/app/modules/stock/stock_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StockModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => StockStore(i.get<StockRepository>())),
    Bind.lazySingleton((i) => StockRepository(i.get<Dio>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => StockPage()),
  ];
}
