import 'package:flutter/material.dart';

class UiScreen extends StatelessWidget {
  const UiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows and Columns"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 120,
                  color: Colors.blue,
                  child: Text("Container 1"),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 120,
                  color: Colors.red,
                  child: Text("Container 2"),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 120,
                    color: Colors.blue,
                    child: Text("Container 3"),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 400,
                  width: double.infinity,
                  color: Colors.blueGrey,
                  child: Text("Container 1"),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 400,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Text("Container 2"),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 400,
                  width: double.infinity,
                  color: Colors.blueGrey,
                  child: Text("Container 3"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  }

