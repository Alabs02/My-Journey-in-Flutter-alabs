import 'package:flutter/material.dart';
import './lists.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard({ this.quote });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      elevation: 3.0,
      shadowColor: Colors.grey[700],
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.content,
              style: TextStyle(fontSize: 16.0, color: Colors.grey[800]),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[500]),
            ),
          ],
        ),
      ),
    );
  }
}
