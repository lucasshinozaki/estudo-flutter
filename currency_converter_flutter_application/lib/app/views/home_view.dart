import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Image.asset('assets/image/currency-converter-logo.png'),
            SizedBox(
             width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(child: 
                  DropdownButton(items: null,onChanged: (value) {},)
                  ),
                  Expanded(
                    child: TextField(
                    decoration: InputDecoration(),
                  ),
                  )
                ],
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('CONVERTER')),
          ],
        ),
      ),
    );
  }
}
