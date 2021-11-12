import 'package:flutter_modular/flutter_modular.dart';
import 'package:treinandoreplica/app/modules/cadastro/cadastro_store.dart';
import 'package:flutter/material.dart';
import 'package:treinandoreplica/app/modules/stock/stock_page.dart';
import 'package:treinandoreplica/app/modules/cadastro/cadastro_page.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key? key, this.title = 'Cadastrando Produto'})
      : super(key: key);
  @override
  CadastroPageState createState() => CadastroPageState();
}

class Produto {
  String nome;
  int quantidade;
  double valor;
  String tamanho_descricao;

  Produto(this.nome, this.quantidade, this.valor, this.tamanho_descricao);

  @override
  String toString() {
    return 'Produto{nome: $nome, quantidade: $quantidade, valor: $valor}';
  }
}

class CadastroPageState extends State<CadastroPage> {
  CadastroStore store = Modular.get();

  TextEditingController _controladorNome = TextEditingController();
  TextEditingController _controladorQuantidade = TextEditingController();
  TextEditingController _controladorValor = TextEditingController();
  TextEditingController _controladorTamanho = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                height: 400,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Column(
                    children: [
                      Text(
                        "Cadastrando Produto",
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        controller: _controladorNome,
                        decoration: InputDecoration(
                          labelText: 'Produto',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _controladorQuantidade,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Quantidade',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _controladorValor,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Preço',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          String nome = _controladorNome.text;
                          int quantidade =
                              int.tryParse(_controladorQuantidade.text)!;
                          double valor =
                              double.tryParse(_controladorValor.text)!;
                          String tamanho_descricao = _controladorTamanho.text;

                          Produto produtoNovo = Produto(
                              nome, quantidade, valor, tamanho_descricao);
                          List<dynamic> produtos = [];
                        },
                        child: Container(
                            width: double.infinity,
                            child: Text(
                              'Cadastrar',
                              textAlign: TextAlign.center,
                            )),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
