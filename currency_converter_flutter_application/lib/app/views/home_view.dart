import 'package:currency_converter_flutter_application/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/image/currency-converter-logo.png',
                width: 100,
                height: 100,
              ),
              CurrencyBox(),
              CurrencyBox(),
              RaisedButton(
                color: Colors.amber,
                onPressed: () {}, 
                child: Text('CONVERTER')),
            ],
          ),
        ),
      ),
    );
  }
}
