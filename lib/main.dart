import 'package:flutter/material.dart';
import 'qoutess.dart';
import 'num.dart';

void main() => runApp(MaterialApp(
      home: qoutechange(),
    ));

class qoutechange extends StatefulWidget {
  const qoutechange({Key? key}) : super(key: key);

  @override
  _qoutechangeState createState() => _qoutechangeState();
}

class _qoutechangeState extends State<qoutechange> {
  List<Quote> qoutes = [
    // 'Be Yourself, everyone else is already take',
    // 'I have nothing to declare except my genius',
    // 'The truth is rarely pure and never simple'
    Quote(
        author: 'Smartbar',
        test: 'Be Yourself, everyone else is already take',
        year: '2001'),
    Quote(
        author: 'Immunizer',
        test: 'I have nothing to declare except my genius',
        year: '1999'),
    Quote(
        author: 'Noodle Gem',
        test: 'The truth is rarely pure and never simple',
        year: '2008'),
  ];
//  Widget qouteTmplate(quote) {
//    return qoute_card(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Awesome Qoute"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          elevation: 0.0,
        ),
        // body: Column(
        //   children: qoutes
        //       .map(
        //         (qoute) => Text('${qoute.text} - ${qoute.author}'),
        //       )
        //       .toList(),
        body: Column(
          children: qoutes
              .map((quote) => qoute_card(
                  quote: quote,
                  delete: () {
                    setState(() {
                      qoutes.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}
