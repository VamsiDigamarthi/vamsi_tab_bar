import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({Key? key}) : super(key: key);

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  int radioValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("radio buttons"),
      ),
      body: Column(
        children: [
          Radio(
              value: 0,
              groupValue: radioValue,
              onChanged: (val) {
                print(val);
                setState(() {
                  radioValue = val as int;
                });
              }),
          Radio(
              value: 1,
              groupValue: radioValue,
              onChanged: (val) {
                print(val);
                setState(() {
                  radioValue = val as int;
                });
              }),
          RadioListTile(
              value: 0,
              groupValue: radioValue,
              title: Text("male"),
              onChanged: (val) {
                print(val);
                setState(() {
                  radioValue = val as int;
                });
              }),
          RadioListTile(
              value: 1,
              groupValue: radioValue,
              title: Text("female"),
              onChanged: (val) {
                print(val);
                setState(() {
                  radioValue = val as int;
                });
              })
        ],
      ),
    );
  }
}
