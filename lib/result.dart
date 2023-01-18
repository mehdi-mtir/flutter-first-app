import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int inputScore;
  /*Result(int inputScore){
    this._score = inputScore;
  }*/

  const Result({super.key, required this.inputScore});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Résultat : $inputScore"),
    );
  }
}
