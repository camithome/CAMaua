import 'package:treinandoreplica/app/modules/finances/finances_Page.dart';
import 'package:treinandoreplica/app/modules/finances/finances_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FinancesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => FinancesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => FinancesPage()),
  ];
}
