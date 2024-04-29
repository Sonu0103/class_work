import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final int index;
  const OutputScreen({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'hello $index',
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }
}
