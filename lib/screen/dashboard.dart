import 'package:class_app/screen/arithmetic_screen.dart';
import 'package:class_app/screen/si_screen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder:
                        (context)=> const ArithmeticScreen())
                );

              },
              child: const Text(
                'Arithmetic',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:
                  (context)=> const SimpleInterestScreen())
                );

              },
              child: const Text(
                'SI',
                style: TextStyle(
                  fontSize: 25,
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}