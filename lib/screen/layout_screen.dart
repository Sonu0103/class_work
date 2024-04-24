import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key); // Added Key? key parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Design"),
      ),
      body: Container(
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.call,size:40,),
                  ],
                ),
                Row(
                  children: [
                    Text("call")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
