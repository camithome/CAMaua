import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:treinandoreplica/app/modules/home/home_page.dart';
import 'package:treinandoreplica/app/modules/products/products_module.dart';
import 'package:treinandoreplica/app/modules/products/products_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
    ).modular();
  }
}
