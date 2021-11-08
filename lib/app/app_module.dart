import 'package:flutter_modular/flutter_modular.dart';
import 'package:treinandoreplica/app/modules/cadastro/cadastro_module.dart';
import 'package:treinandoreplica/app/modules/finances/finances_module.dart';
import 'package:treinandoreplica/app/modules/products/products_module.dart';
import 'package:treinandoreplica/app/modules/stock/stock_module.dart';

import 'modules/home/home_module.dart';
import 'start_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => StartPage(), children: [
      ModuleRoute('/home', module: HomeModule()),
      ModuleRoute('/stock', module: StockModule()),
      ModuleRoute('/products', module: ProductsModule()),
      ModuleRoute('/finance', module: FinancesModule()),
      ModuleRoute('/cadastro', module: CadastroModule()),
    ])
  ];
}
