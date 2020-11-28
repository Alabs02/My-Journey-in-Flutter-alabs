import 'package:flutter/material.dart';
import './partials/lists.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
          style: TextStyle(),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Quote> quotes = [
    Quote(
        author: 'alabs',
        content: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'alabs', content: 'I have nothing to declare except my genius'),
    Quote(
        author: 'alabs', content: 'The truth is rarely pure, and never simple'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.grey[400],
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: quotes.map((quote) {
              return Text(
                '${quote.content} - ${quote.author}'
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
