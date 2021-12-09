import 'package:expenseplanner/transaction.dart';
import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
        id: '1', title: 'New shoes', amount: 34.34, date: DateTime.now()),
    Transaction(id: '2', title: 'New pant', amount: 44.44, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expense Tracker'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Card(
                color: Colors.lightBlueAccent,
                child: Text('Chart !'),
                elevation: 5,
              ),
            ),
            Column(
              children: [
                ...transaction.map((e) {
                  return Card(
                      child: Row(
                    children: <Widget>[
                      Container(
                          
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.purple,
                          )),
                          child: Text(
                            e.amount.toString(),
                            style:
                                TextStyle(color: Colors.purple, fontSize: 25),
                          ),
                          padding: EdgeInsets.all(5)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.title.toString(),
                            style: TextStyle(color: Colors.black , fontSize: 20 , fontWeight: FontWeight.bold),
                          ),
                          Text("${e.date!.day}-${e.date!.month}-${e.date!.year}",style: TextStyle(color: Colors.grey , fontSize: 15),)
                        ],
                      )
                    ],
                  ));
                })
              ],
            )
          ],
        ));
  }
}
