import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';

import './result.dart';

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
  bool _quizCompleted = false;

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
    } else {
      setState(() {
        _quizCompleted = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Quiz App')),
        body: !_quizCompleted
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                getResponse: _getResponse,
              )
            : Result(inputScore: _score),
      ),
    );
  }
}
