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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                      height: 56,
                      child: DropdownButton(
                        isExpanded: true,
                        underline: Container(
                          height: 1,
                          color: Colors.amber,
                        ),
                        items: const [
                          DropdownMenuItem(
                            value: 1,
                            child: Text('Real'),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text('Dolar'),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.amber))),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
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
