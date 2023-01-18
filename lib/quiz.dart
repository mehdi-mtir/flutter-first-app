import 'package:flutter/material.dart';

import './question.dart';
import './reponse.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function getResponse;

  const Quiz({
    required this.questions,
    required this.questionIndex,
    required this.getResponse,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question: questions[questionIndex]['question'] as String),
        ...(questions[questionIndex]['reponses'] as List)
            .map((rep) => Reponse(
                  reponse: rep,
                  getResponse: getResponse,
                ))
            .toList()
      ],
    );
  }
}
