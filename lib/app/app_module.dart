import 'package:flutter_modular/flutter_modular.dart';
import 'package:treinandoreplica/app/modules/products/products_module.dart';
import 'package:treinandoreplica/app/modules/stock/stock_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
    ModuleRoute('/stock', module: StockModule()),
    ModuleRoute('/products', module: ProductsModule()),
  ];
}
