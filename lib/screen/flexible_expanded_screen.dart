import 'package:class_app/common/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                alignment: Alignment.center,
                color: Colors.amberAccent,
                height: 400,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(
                      //         content: Text('hello world',
                      //         style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 20,
                      //         ),
                      //         ),
                      //
                      //
                      //       duration: Duration(seconds: 5),
                      //       backgroundColor: Colors.green,
                      //       behavior: SnackBarBehavior.floating,
                      //     ),
                      // );
                      showMySnackBar(message: 'hello', context: context);
                    }, child: Text("Button1")),



              ),
            ),

            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                width: double.infinity,
                height: 200,
                child: ElevatedButton(
                  onPressed: () {
                    showMySnackBar(message: 'pyaro aashista', context: context);
                  }, child: Text("Button 2"),)
              
              ),
            )
          ],
          
        ),
      ),
    );
  }
}
