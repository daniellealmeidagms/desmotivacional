import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Desmotivacional'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _frases = [
    "O caminho é longo, mas a derrota é certa.",
    "Só vai dar errado se você tentar.",
    "Nunca foi azar, sempre foi incompetência.",
    "Não sabendo que era impossível, foi lá e soube.",
    "Um dia você perde, no outro não ganha.",
    "Você não pode mudar seu passado, mas pode estragar seu futuro.",
    "Não tenha medo do fracasso: tenha certeza."
  ];

  var _index = 0;

  _sortIndex(){
    setState(() {
      _index = Random().nextInt(_frases.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                _frases[_index],
                style: TextStyle(
                    fontSize: 28
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sortIndex,
        tooltip: 'Next',
        child: const Icon(Icons.arrow_forward_ios),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
