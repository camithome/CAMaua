import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
//import 'package:slidy_testes/app/modules/home/home_store.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
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
                    Modular.to.navigate('/products');
                  },
                  child: Text('Produtos')),
              SizedBox(width: 10),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.navigate('/Stock');
                  },
                  child: Text('Estoque'))
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
      //drawer: Drawer(
      //    ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          //child: Container(
          //width: 600,
          height: 400,
          //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 8,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text('Red Bull'),
                                SizedBox(height: 15),
                                Container(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset('assets/RedBull2.jpg')),
                                Divider(),
                                SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {}, child: Text('Ama')),
                                    SizedBox(width: 10),
                                    ElevatedButton(
                                        onPressed: () {}, child: Text('Ver')),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 8,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Text('Moletom Masc'),
                                SizedBox(height: 15),
                                Container(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset('assets/Moletom.jpg')),
                                SizedBox(height: 12),
                                Divider(thickness: 2),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {}, child: Text('GG')),
                                    SizedBox(width: 6),
                                    ElevatedButton(
                                        onPressed: () {}, child: Text('G')),
                                    SizedBox(width: 6),
                                    ElevatedButton(
                                        onPressed: () {}, child: Text('M')),
                                    SizedBox(width: 6),
                                    ElevatedButton(
                                        onPressed: () {}, child: Text('P')),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
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
              ],
            ),
          ) //),
          ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
