import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  int _currentPosition = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.amber,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPosition,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "contact"),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: "email")
        ],
        onTap: (index) {
          setState(() {
            _currentPosition = index;
          });
        },
      ),
    );
  }
}
