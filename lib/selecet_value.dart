import 'package:flutter/material.dart';

class MySelecet extends StatefulWidget {
  const MySelecet({Key? key}) : super(key: key);

  @override
  State<MySelecet> createState() => _MySelecetState();
}

class _MySelecetState extends State<MySelecet> {
  var countries = ["india", "chinna", "dubai"];
  String selectedItem = "india";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("selecet"),
      ),
      body: Column(
        children: [
          Center(
            child: DropdownButton(
                value: selectedItem,
                items: countries
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (e) {
                  setState(() {
                    selectedItem = e
                        as String; // ! mark that the val is definitely not null
                  });
                }),
          ),
        ],
      ),
    );
  }
}
