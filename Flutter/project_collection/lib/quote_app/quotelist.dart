import 'package:flutter/material.dart';
import 'package:flutter_second/quote_app/quote.dart';
import 'package:flutter_second/quote_app/quotecard.dart';

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote("Be yourself; everyone else is already taken", "Oscar Wilde"),
    Quote("Be yourself; everyone else is already taken", "Oscar Wilde"),
    Quote("The truth is rarely pure and never simple", "Oscar Wilde")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
        Scaffold(
          backgroundColor: Colors.grey[400],
          appBar: AppBar(
            title: Text("Awesome quotes"),
            centerTitle: true,
            backgroundColor: Colors.redAccent,
          ),
          body: Column(
            children: [
              ...quotes.map((quote) => QuoteCard(quote, () {
                setState(() {
                  quotes.remove(quote);
                });
              })).toList()
            ],
          ),
        )
    );
  }
}