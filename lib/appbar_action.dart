import 'package:bottomnavigationbar/appbar_action_open_setting.dart';
import 'package:flutter/material.dart';

class MyAppAction extends StatelessWidget {
  const MyAppAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Action"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          PopupMenuButton(
              onSelected: (item) {
                if (item == 'Settings') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new MyActionSettings()));
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    PopupMenuItem(
                      child: Text("Settings"),
                      value: "Settings",
                    ),
                    PopupMenuItem(
                      child: Text("Logout"),
                      value: "Logout",
                    ),
                  ])
        ],
      ),
    );
  }
}
