import 'package:flutter/material.dart';

class AddRecordPage extends StatefulWidget {
  const AddRecordPage({Key? key}) : super(key: key);

  @override
  State<AddRecordPage> createState() => _AddRecordPageState();
}

class _AddRecordPageState extends State<AddRecordPage> {
  InputDecoration decoration(String label) => InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Book Details"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          TextField(
            decoration: decoration('Book Name'),
          ),
          const SizedBox(
            height: 24,
          ),
          TextField(
            decoration: decoration('Book Author'),
          ),
          const SizedBox(
            height: 24,
          ),
          TextField(
            decoration: decoration('Book Edition'),
          ),
          const SizedBox(
            height: 24,
          ),
          TextField(
            decoration: decoration('ISBN Number'),
          ),
          const SizedBox(
            height: 24,
          ),
          TextField(
            decoration: decoration('Count'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              child: Text("ADD"),
              onPressed: () {
                Navigator.of(context).pushNamed("addrecordpage");
                //Navigator.pop(context); -- this will go back to previous page
              })
        ],
      ),
    );
  }
}
