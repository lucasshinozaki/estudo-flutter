import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email", border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password", border: OutlineInputBorder()),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  if (email == 'email@hotmail.com' && password == '123') {
                    print("correto");
                  } else {
                    print('login invalido');
                  }
                },
                child: Text("Entrar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
