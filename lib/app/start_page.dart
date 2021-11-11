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
        title: Row(
          children: [
            Text('Centro Academico Mauá'),
            //Image(image: AssetImage('assets/LogoBranco.png')),
            SizedBox(width: 15),
            Image.asset('assets/1.png', fit: BoxFit.contain, height: 32),
          ],
        ),
        //Image.asset('assets/Logo_branco.png'),
        backgroundColor: Colors.black,
        flexibleSpace: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Modular.to.navigate('/home');
                  },
                  child: Text('Loja')),
              SizedBox(width: 10),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.navigate('/finance');
                  },
                  child: Text('Financeiro')),
              SizedBox(width: 10),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.navigate('/stock');
                  },
                  child: Text('Estoque'))
            ],
          ),
        ),
      ),
      body: RouterOutlet(),
    );
  }
}
