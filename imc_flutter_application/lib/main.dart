import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplicativo Imc",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nome = TextEditingController();
  TextEditingController altura = TextEditingController();
  TextEditingController peso = TextEditingController();
  String msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Aplicativo IMC"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/1/16/IMC_logo_RGB_notag-300dpi.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nome,
                  decoration: InputDecoration(
                      labelText: "Nome", border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: altura,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Altura", border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: peso,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Peso", border: OutlineInputBorder()),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  final imc = double.parse(peso.text) /
                      (double.parse(altura.text) * double.parse(altura.text));
                  setState(() {
                    msg = "Olá ${nome.text}, seu imc é: ${imc.toStringAsFixed(2)}, você está ${estado(imc)}";
                  });
                },
                textColor: Colors.white,
                color: Colors.red,
                child: Text("Calcular"),
              ),
              Text(msg)
            ],
          ),
        ));
  }

  String estado(double valor) {
    if (valor <= 18.5) {
      return "Magro";
    }
    if (valor > 18.5 && valor < 24.9) {
      return "Normal";
    }
    return "Sobrepeso";
  }
}
