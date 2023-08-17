import 'package:flutter/material.dart';

class MySharedPreference extends StatelessWidget {
  //const MySharedPreference({ Key? key }) : super(key: key);
  TextEditingController _textControll = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: _textControll,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Enter your name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone)),
                ),
                SizedBox(height: 30),
                OutlinedButton(
                    onPressed: () {
                      print(_textControll);
                    },
                    child: Text("click to save"))
              ],
            ),
          )
        ],
      ),
    );
  }

  // void saveSpDate() async {
  //   SharedPreferences sharedPreference = await SharedPreferences.getInstance();
  // }
}
