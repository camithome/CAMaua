import 'package:flutter_modular/flutter_modular.dart';
import 'package:treinandoreplica/app/modules/cadastro/cadastro_module.dart';
import 'package:treinandoreplica/app/modules/cadastro/cadastro_page.dart';
import 'package:treinandoreplica/app/modules/stock/stock_store.dart';
import 'package:flutter/material.dart';

class StockPage extends StatefulWidget {
  final String title;
  const StockPage({Key? key, this.title = 'StockPage'}) : super(key: key);
  @override
  StockPageState createState() => StockPageState();
}

class StockPageState extends ModularState<StockPage, StockStore> {
  Widget bodyData() => DataTable(
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
              names.sort((a, b) => a.nome.compareTo(b.nome));
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
      rows: names
          .map(
            (name) => DataRow(
              cells: [
                DataCell(
                  Text(name.nome),
                  showEditIcon: false,
                  placeholder: false,
                ),
                DataCell(
                  Text(name.tamanho_descricao),
                  showEditIcon: false,
                  placeholder: false,
                ),
                DataCell(
                  Text(name.quantidade.toString()),
                  showEditIcon: true,
                  placeholder: false,
                ),
                DataCell(
                  Text(name.valor.toString()),
                  showEditIcon: false,
                  placeholder: false,
                )
              ],
            ),
          )
          .toList());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 520, right: 50),
        child: Container(
          child: Card(child: bodyData()),
        ),
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

/*
class Produto {
  String nome;
  String tamanho_descricao;
  double preco;
  int quantidade;

  Produto({
    required this.nome,
    required this.tamanho_descricao,
    required this.preco,
    required this.quantidade,
  });
}
*/

var names = <Produto>[
  //Criando lista. Mas lista ja esta criada....
  Produto("Shorts", 2, 60.00, "G"),
  Produto("Moletom", 3, 15.00, "P"),

  /*
  Produto(nome: "Shorts", tamanho_descricao: "G", quantidade: 2, preco: 60.00),
  Produto(nome: "Moletom", tamanho_descricao: "P", quantidade: 3, preco: 15.50),
  Produto(
      nome: "RedBull",
      tamanho_descricao: "Tropical",
      quantidade: 1,
      preco: 10.00),
    */
];
