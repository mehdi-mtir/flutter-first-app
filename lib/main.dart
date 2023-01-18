import 'dart:ffi';

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
  int _score = 0;

  final _questions = [
    {
      "question": "Quel langage est utilisé avec Flutter?",
      "reponses": [
        {"text": "Javascript", "score": 0},
        {"text": "Java", "score": 0},
        {"text": "Dart", "score": 4},
        {"text": "Go", "score": 0},
      ]
    },
    {
      "question": "Quel est le composant principal d'une application Flutter?",
      "reponses": [
        {"text": "Component", "score": 0},
        {"text": "Widget", "score": 4},
        {"text": "Activity", "score": 0},
        {"text": "Service", "score": 0},
      ]
    },
    {
      "question": "En quelle année est apparue la première version de Flutter?",
      "reponses": [
        {"text": "2010", "score": 0},
        {"text": "2015", "score": 0},
        {"text": "2018", "score": 4},
        {"text": "2020", "score": 0},
      ]
    },
  ];

  _getResponse(int responseScore) {
    print("Reponse sélectionnée!");
    _score += responseScore;
    print(_score);
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Quiz App')),
        body: Column(
          children: [
            Text(_questions[_questionIndex]['question'] as String),
            ...(_questions[_questionIndex]['reponses'] as List)
                .map((rep) => ElevatedButton(
                    onPressed: () => _getResponse(rep['score']),
                    child: Text(rep['text'] as String)))
                .toList()
          ],
        ),
      ),
    );
  }
}
