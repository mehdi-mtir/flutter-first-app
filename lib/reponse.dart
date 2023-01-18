import 'package:flutter/material.dart';

class Reponse extends StatelessWidget {
  final Map reponse;
  final Function getResponse;
  const Reponse({super.key, required this.reponse, required this.getResponse});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => getResponse(reponse['score']),
        child: Text(reponse['text'] as String));
  }
}
