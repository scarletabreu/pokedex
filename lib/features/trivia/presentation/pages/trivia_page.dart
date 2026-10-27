import 'package:flutter/material.dart';

class TriviaPage extends StatelessWidget {
  const TriviaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trivia Pokémon')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.quiz_outlined, size: 72),
              SizedBox(height: 16),
              Text(
                'Trivia Pokémon',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Pon a prueba tus conocimientos '
                'sobre el mundo Pokémon.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Chip(label: Text('Próximamente')),
            ],
          ),
        ),
      ),
    );
  }
}
