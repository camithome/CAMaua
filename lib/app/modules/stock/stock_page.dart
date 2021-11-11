import 'package:flutter_modular/flutter_modular.dart';
import 'package:treinandoreplica/app/modules/stock/stock_store.dart';
import 'package:flutter/material.dart';

class StockPage extends StatefulWidget {
  final String title;
  const StockPage({Key? key, this.title = 'StockPage'}) : super(key: key);
  @override
  StockPageState createState() => StockPageState();
}

class StockPageState extends ModularState<StockPage, StockStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 32),
        alignment: Alignment.topCenter,
        child: Card(
            child: DataTable(
                onSelectAll: (b) {},
                sortColumnIndex: 0,
                sortAscending: true,
                columns: <DataColumn>[
                  DataColumn(
                    label: Text("Nome"),
                    numeric: false,
                    onSort: (i, b) {
                      print("$i $b");
                      setState(() {
                        controller.listStock
                            .sort((a, b) => a.name.compareTo(b.name));
                      });
                    },
                    tooltip: "Ordenar pelo nome do produto",
                  ),
                  DataColumn(
                    label: Text("Tamanho/Descrição"),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text("Quantidade"),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text("Preço"),
                    numeric: false,
                  ),
                ],
                rows: controller.listStock
                    .map(
                      (row) => DataRow(
                        cells: [
                          DataCell(
                            Text(row.name),
                            showEditIcon: false,
                            placeholder: false,
                          ),
                          DataCell(
                            Text(row.description),
                            showEditIcon: false,
                            placeholder: false,
                          ),
                          DataCell(
                            Text('${row.amount}'),
                            showEditIcon: true,
                            placeholder: false,
                          ),
                          DataCell(
                            Text('${row.price}'),
                            showEditIcon: false,
                            placeholder: false,
                          )
                        ],
                      ),
                    )
                    .toList())),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //Navigator.of(context).pushReplacementNamed('/cadastro');
          Modular.to.navigate('/cadastro');
        },
      ),
    );
  }
}
