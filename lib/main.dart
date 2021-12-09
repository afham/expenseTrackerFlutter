import 'package:expenseplanner/transaction.dart';
import 'package:flutter/material.dart';
import './transaction.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  } 
}

class MyHomePage extends StatelessWidget {

  final List<Transaction> transaction = [
    Transaction(id: '1',title: 'new shoes',amount: 34.34,date: DateTime.now()),
    Transaction(id: '2',title: 'new pant',amount: 344.44,date: DateTime.now())
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
          Card(
            child:Container(
              color: Colors.lightBlueAccent,
              width: double.infinity,
              child:Text('Chart !')) ,
              elevation: 5,
          ),
          Column(
            children: [
              ...transaction.map((e) => Card(
                child: Text(e.title.toString()),
              ))
            ],
          )
        ],
      )
      );
   
  }
}
