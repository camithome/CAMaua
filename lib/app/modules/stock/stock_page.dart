import 'package:flutter_modular/flutter_modular.dart';
import 'package:treinandoreplica/app/modules/stock/stock_store.dart';
import 'package:flutter/material.dart';

class StockPage extends StatefulWidget {
  final String title;
  const StockPage({Key key, this.title = 'StockPage'}) : super(key: key);
  @override
  StockPageState createState() => StockPageState();
}

class StockPageState extends State<StockPage> {
  final StockStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Centro Academico'),
          backgroundColor: Colors.black,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Financeiro')),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/products');
                    },
                    child: Text('Produtos')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: Text('Estoque'))
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextButton(onPressed: () {}, child: Text('Deslogar')),
            ),
          ],
          //],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 520),
          child: Card(
            child: DataTable(columns: [
              DataColumn(label: Text('Nome')),
              DataColumn(label: Text('Preço')),
              DataColumn(label: Text('Quantidade')),
              DataColumn(label: Text('Ações')),
            ], rows: [
              DataRow(cells: [
                DataCell(Text('Moletom Masc GG')),
                DataCell(Text('RS 100')),
                DataCell(Text('1')),
                DataCell(Text('Editar')),
              ]),
              DataRow(cells: [
                DataCell(Text('Shorts Feminino G')),
                DataCell(Text('RS 60')),
                DataCell(Text('1')),
                DataCell(Text('Editar')),
              ])
            ]),
          ),
        ));
  }
}
