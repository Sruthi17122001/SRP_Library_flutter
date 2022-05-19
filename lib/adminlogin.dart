import 'package:flutter/material.dart';
import 'admincontrolpage.dart';

class AdminLogin extends StatelessWidget {
  InputDecoration decoration(String label) => InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      );
  const AdminLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADMIN LOGIN PAGE'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Image(image: AssetImage('assets/login.png')),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
              decoration: decoration('EMAIL'),
              keyboardType: TextInputType.emailAddress),
          const SizedBox(
            height: 24,
          ),
          TextField(
              decoration: decoration('PASSSWORD'),
              keyboardType: TextInputType.visiblePassword),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            child: Text("LOGIN"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdminControlPage()));
            },
          )
        ],
      ),
    );
  }
}
