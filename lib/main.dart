// import 'package:bottomnavigationbar/radio_button.dart';
// import 'package:bottomnavigationbar/selecet_value.dart';
// import 'package:bottomnavigationbar/bottom_nav.dart';
import 'package:bottomnavigationbar/appbar_action.dart';
// import 'package:bottomnavigationbar/shared_preference.dart';
// import 'package:bottomnavigationbar/switch_widget.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bottom navaigation bar",
      debugShowCheckedModeBanner: false,
      home: new MyAppAction(),
    );
  }
}
