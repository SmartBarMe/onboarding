import 'package:flutter/material.dart';
import 'qoutess.dart';

class qoute_card extends StatelessWidget {
  final Quote quote;
  final Function delete;
  qoute_card({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.test,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(fontSize: 16.0, color: Colors.grey[800]),
            ),
            SizedBox(height: 3.00),
            FlatButton.icon(
              onPressed: delete(),
              padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
              label: Text('delete'),
              icon: Icon(Icons.delete),
              hoverColor: Colors.red[900],
              textColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
// class class
