import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({Key? key}) : super(key: key);

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Switch(
                activeColor: Colors.red,
                value: switchValue,
                onChanged: (val) {
                  setState(() {
                    switchValue = val;
                  });
                }),
            SwitchListTile(
                title: Text("change date form value"),
                value: switchValue,
                onChanged: (val) {
                  setState(() {
                    switchValue = val;
                  });
                })
          ],
        ),
      ),
    );
  }
}
