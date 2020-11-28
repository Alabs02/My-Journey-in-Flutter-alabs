import 'package:flutter/material.dart';
import './partials/lists.dart';
import './partials/quoteCard.dart';

void main() => runApp(MaterialApp(
      home: QuoteScreen(),
      // debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
    ));

class QuoteScreen extends StatefulWidget {
  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: Colors.grey[200]),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent[200],
      ),
      body: QuoteList(),
    );
  }
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(
        content: 'Be yourself; everyone else is already taken',
        author: 'Alabs'),
    Quote(
        content: 'Be yourself; everyone else is already taken',
        author: 'Alabs'),
    Quote(
        content: 'Be yourself; everyone else is already taken',
        author: 'Alabs'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
    );
  }
}
