import 'package:flutter/material.dart';
import 'package:imc2/calculo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var calc = calculo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cálcule Seu IMC"),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Informe sua altura (cm)',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Informe seu peso(kg)',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Aqui é para sair o resultado',
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            primary: Colors.red,
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            setState(() {
              calculo();
            });
          },
          child: const Text('Calcular'),
        )
      ]),
    );
  }
}
