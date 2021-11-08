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
          //height: MediaQuery.of(context).size.height,
          //child: Container(
          //width: 600,
          height: 800,
          //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 5,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: GridView.count(
                        //scrollDirection: Axis.horizontal,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        primary: false,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        children: [
                          CardProduto(
                            title: 'Red Bull',
                            pathImage: 'assets/RedBull2.jpg',
                            options: ['Amr', 'Ver'],
                          ),
                          CardProduto(
                            title: 'Moletom Masc',
                            pathImage: 'assets/Moletom.jpg',
                            options: ['PP', 'P', 'M', 'G', 'GG'],
                          ),
                          CardProduto(
                            title: 'Moletom Fem',
                            pathImage: 'assets/Moletom.jpg',
                            options: ['P', 'M', 'G', 'GG'],
                          ),
                          CardProduto(
                            title: 'Moletom 2020 Masc',
                            pathImage: 'assets/Moletom.jpg',
                            options: ['P', 'M', 'G'],
                          ),
                        ],
                      ),
                    ),
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
                                    onPressed: () {}, child: Text('Limpar')),
                              ],
                            ),
                            Divider(
                              height: 20,
                            ),
                            Text('Preço Total: RS'),
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
                                    child: Icon(Icons.add_shopping_cart),
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
