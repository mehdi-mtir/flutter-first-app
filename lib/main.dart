import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Quiz App')),
        body: Column(
          children: [
            const Text('Question'),
            ElevatedButton(
                onPressed: () => print('Reponse 1 sélectionnée!'),
                child: const Text('Reponse 1')),
            ElevatedButton(
                onPressed: () => print('Reponse 2 sélectionnée!'),
                child: Text('Reponse 2')),
            ElevatedButton(
                onPressed: () => print('Reponse 3 sélectionnée!'),
                child: Text('Reponse 3')),
          ],
        ),
      ),
    );
  }
}
