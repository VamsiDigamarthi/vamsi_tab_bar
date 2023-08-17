import 'package:flutter/material.dart';

class MyActionSettings extends StatelessWidget {
  const MyActionSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("setting"),
      ),
      body: Container(
        child: Center(
          child: Text("this is settings"),
        ),
      ),
    );
  }
}
