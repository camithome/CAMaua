import 'package:flutter_mobx/flutter_mobx.dart';
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
  Widget bodyData() => Observer(builder: (context) {
        return DataTable(
            onSelectAll: (b) {},
            //sortColumnIndex: 0,
            sortAscending: true,
            columns: <DataColumn>[
              DataColumn(
                label: Text("ID"),
                numeric: false,
                onSort: (i, b) {
                  setState(() {
                    controller.listFinances
                        .sort((a, b) => a.id.compareTo(b.id));
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
                    controller.listFinances
                        .sort((a, b) => a.name.compareTo(b.name));
                  });
                },
                tooltip: "Ordenar pelo nome do produto",
              ),
              DataColumn(
                label: Text("Tamanho"),
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
            rows: controller.listFinances
                .map(
                  (rowData) => DataRow(
                    cells: [
                      DataCell(
                        Text('${rowData.id}'),
                        showEditIcon: false,
                        placeholder: false,
                      ),
                      DataCell(
                        Text('${rowData.name}'),
                        showEditIcon: false,
                        placeholder: false,
                      ),
                      DataCell(
                        Text('${rowData.amount}'),
                        showEditIcon: false,
                        placeholder: false,
                      ),
                      DataCell(
                        Text('${rowData.price}'),
                        showEditIcon: false,
                        placeholder: false,
                      )
                    ],
                  ),
                )
                .toList());
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 32),
          width: MediaQuery.of(context).size.width * 0.6,
          alignment: Alignment.center,
          child: ListView(
            children: [
              SizedBox(height: 10),
              Text("Filtrar por Data", style: TextStyle(fontSize: 30)),
              DateTimePicker(
                initialValue: '',
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: 'Data Inicial',
                onChanged: (endDate) => controller.setEndDate(endDate),
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
                onChanged: (endDate) => controller.setEndDate(endDate),
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
