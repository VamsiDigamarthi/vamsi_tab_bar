import 'package:flutter/material.dart';

class TabBars extends StatelessWidget {
  // const TabBars({Key? key}) : super(key: key);

  var list = [
    Icon(Icons.home),
    Icon(Icons.wallet),
    Icon(Icons.phone),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabs"),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "home",
              ),
              Tab(
                icon: Icon(Icons.wallet),
                text: "wallet",
              ),
              Tab(
                icon: Icon(Icons.phone),
                text: "phone",
              ),
            ]),
          ),
          body: TabBarView(children: list),
        ));
  }
}
