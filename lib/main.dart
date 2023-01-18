import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  final _questions = [
    {"question": "Quel langage est utilisé avec Flutter?????", "reponses": []},
    {
      "question": "Quel est le composant principal d'une application Flutter?",
      "reponses": []
    },
    {
      "question": "En quelle année est apparue la première version de Flutter?",
      "reponses": []
    },
  ];

  _getResponse() {
    print("Reponse sélectionnée!");
    _questionIndex++;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Quiz App')),
        body: Column(
          children: [
            Text(_questions[_questionIndex]['question'] as String),
            ElevatedButton(onPressed: _getResponse, child: Text('Reponse 1')),
            ElevatedButton(onPressed: _getResponse, child: Text('Reponse 2')),
            ElevatedButton(onPressed: _getResponse, child: Text('Reponse 3')),
          ],
        ),
      ),
    );
  }
}
