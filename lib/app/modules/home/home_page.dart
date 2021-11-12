import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
//import 'package:slidy_testes/app/modules/home/home_store.dart';

import 'components/card_widget.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  var dropdownValue = 'Colaboradores';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Observer(builder: (context) {
                      return GridView.builder(
                        shrinkWrap: true,

                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8),
                        //scrollDirection: Axis.horizontal,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        primary: false,
                        padding: const EdgeInsets.all(20),
                        itemCount: controller.listHome.length,
                        itemBuilder: (context, index) {
                          return CardProduto(
                            onAddToCar: () {
                              controller.addToMyCar(controller.listHome[index]);
                            },
                            title: controller.listHome[index].name,
                            pathImage: 'assets/Moletom.jpg',
                            options: controller.listHome[index].options,
                          );
                        },
                      );
                    }),
                  ),
                ),
                Flexible(flex: 1, child: SizedBox(width: 10)),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 240,
                    child: Card(
                      elevation: 8,
                      //shadowColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Seu carrinho:'),
                                SizedBox(width: 8),
                                TextButton(
                                    onPressed: controller.cleanMyCar,
                                    child: Text('Limpar')),
                              ],
                            ),
                            Divider(
                              height: 20,
                            ),
                            Observer(builder: (context) {
                              return Text(
                                'Preço Total: R\$ ${controller.precoTotal}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              );
                            }),
                            Text('Insira um colaborador'),
                            DropdownButton<String>(
                              value: null,
                              //value: dropdownValue,
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(color: Colors.deepPurple),
                              underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              items: <String>[
                                'Giulia Richieri',
                                'Julia Vigorito',
                                'Julia Takaki',
                                'Lucas Shimada',
                                'Pedro Barroso',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 150,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('FINALIZAR COMPRA'),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ) //),
          ),
    );
  }
}
