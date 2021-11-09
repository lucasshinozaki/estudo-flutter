import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: SizedBox(
          height: 56,
          child: DropdownButton(
            iconEnabledColor: Colors.amber,
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
    );
  }
}
