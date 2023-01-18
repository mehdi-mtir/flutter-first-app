import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Text(question);
  }
}
