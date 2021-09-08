import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    onChanged: (val) {
                      // ignore: unused_label
                      controller: titleController;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    onChanged: (val) {
                      // ignore: unused_label
                      controller: amountController;
                    },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.purple),
                    child: Text('Add transaction'),
                    onPressed: () {
                      print(titleController);
                      print(amountController);
                    },
                  )
                ],
              ),
            ),
          );
  }
}
