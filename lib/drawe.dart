import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                color: Colors.red[100],
                alignment: Alignment.center,
                child: Text("Flutter app"),
              ),
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
              onTap: () {
                Navigator.pop(context);
                // close the drawer whene second home button click
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
            ),
          ],
        ),
      ),
    );
  }
}
