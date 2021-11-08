import 'package:flutter_modular/flutter_modular.dart';
import 'package:treinandoreplica/app/modules/finances/finances_store.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class FinancesPage extends StatefulWidget {
  final String title;
  const FinancesPage({Key? key, this.title = 'FinancesPage'}) : super(key: key);
  @override
  FinancesPageState createState() => FinancesPageState();
}

class FinancesPageState extends ModularState<FinancesPage, FinancesStore> {
  Widget bodyData() => DataTable(
      onSelectAll: (b) {},
      //sortColumnIndex: 0,
      sortAscending: true,
      columns: <DataColumn>[
        DataColumn(
          label: Text("ID"),
          numeric: false,
          onSort: (i, b) {
            print("$i $b");
            setState(() {
              names.sort((a, b) => a.id.compareTo(b.id));
            });
          },
          tooltip: "Ordenar pelo ID do produto",
        ),
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
          label: Text("Tamanho"),
          numeric: false,
        ),
        DataColumn(
          label: Text("Modelo"),
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
                  Text(name.id.toString()),
                  showEditIcon: false,
                  placeholder: false,
                ),
                DataCell(
                  Text(name.nome),
                  showEditIcon: false,
                  placeholder: false,
                ),
                DataCell(
                  Text(name.descricao),
                  showEditIcon: false,
                  placeholder: false,
                ),
                DataCell(
                  Text(name.modelo),
                  showEditIcon: false,
                  placeholder: false,
                ),
                DataCell(
                  Text(name.quantidade.toString()),
                  showEditIcon: false,
                  placeholder: false,
                ),
                DataCell(
                  Text(name.preco.toString()),
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
        padding: const EdgeInsets.only(top: 30, left: 460, right: 50),
        child: Container(
          height: 500,
          width: 700,
          child: ListView(
            children: [
              SizedBox(height: 10),
              Text("Filtrar por Data", style: TextStyle(fontSize: 30)),
              DateTimePicker(
                initialValue: '',
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: 'Data Inicial',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              SizedBox(height: 25),
              DateTimePicker(
                initialValue: '',
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: 'Data final',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              SizedBox(height: 20),
              Card(child: bodyData()),
            ],
          ),
        ),
      ),
    );
  }
}

class Name {
  int id;
  String nome;
  String descricao;
  String modelo;
  int quantidade;
  double preco;

  Name(
      {required this.id,
      required this.nome,
      required this.descricao,
      required this.modelo,
      required this.quantidade,
      required this.preco});
}

var names = <Name>[
  Name(
      id: 1,
      nome: "Shorts",
      descricao: "G",
      modelo: "Masc",
      quantidade: 2,
      preco: 60.00),
  Name(
      id: 2,
      nome: "Moletom",
      descricao: "GG",
      modelo: "Masc",
      quantidade: 3,
      preco: 15.50),
  Name(
      id: 3,
      nome: "RedBull",
      descricao: "Tropical",
      modelo: "  - ",
      quantidade: 1,
      preco: 10.00),
  Name(
      id: 3,
      nome: "RedBull",
      descricao: "Tropical",
      modelo: "  - ",
      quantidade: 1,
      preco: 10.00),
  Name(
      id: 2,
      nome: "Moletom",
      descricao: "GG",
      modelo: "Masc",
      quantidade: 3,
      preco: 15.50),
  Name(
      id: 3,
      nome: "RedBull",
      descricao: "Tropical",
      modelo: "  - ",
      quantidade: 1,
      preco: 10.00),
  Name(
      id: 3,
      nome: "RedBull",
      descricao: "Tropical",
      modelo: "  - ",
      quantidade: 1,
      preco: 10.00),
  Name(
      id: 3,
      nome: "RedBull",
      descricao: "Tropical",
      modelo: "  - ",
      quantidade: 1,
      preco: 10.00),
  Name(
      id: 3,
      nome: "RedBull",
      descricao: "Tropical",
      modelo: "  - ",
      quantidade: 1,
      preco: 10.00),
];
