import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
                    Modular.to.navigate('/home');
                  },
                  child: Text('Produtos')),
              SizedBox(width: 10),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.navigate('/products');
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
      ),
      body: RouterOutlet(),
    );
  }
}
