import 'package:flutter_modular/flutter_modular.dart';
//import 'package:treinandoreplica/app/modules/home/widgets/app_bar_widget.dart';
import 'package:treinandoreplica/app/modules/products/products_store.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  final String title;
  const ProductsPage({Key key, this.title = 'ProductsPage'}) : super(key: key);
  @override
  ProductsPageState createState() => ProductsPageState();
}

class ProductsPageState extends State<ProductsPage> {
  final ProductsStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 20, left: 460),
      child: Card(
        child: DataTable(columns: [
          DataColumn(label: Text('Nome')),
          DataColumn(label: Text('Tamanho/sabor')),
          DataColumn(label: Text('Modelo')),
          DataColumn(label: Text('Quantidade')),
          DataColumn(label: Text('Preço Total')),
        ], rows: [
          DataRow(cells: [
            DataCell(Text('Moletom')),
            DataCell(Text('GG')),
            DataCell(Text('College')),
            DataCell(Text('1')),
            DataCell(Text('RS 100')),
          ]),
          DataRow(cells: [
            DataCell(Text('Shorts')),
            DataCell(Text('G')),
            DataCell(Text('Moletinho')),
            DataCell(Text('1')),
            DataCell(Text('RS 60')),
          ])
        ]),
      ),
    ));
  }
}
