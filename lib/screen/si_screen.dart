import 'package:class_app/model/si_model.dart';
import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  // Global Key
  final mykey = GlobalKey<FormState>();

  SimpleInterestModel? simpleInterestModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: mykey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter first No';
                  }
                  return null;
                },
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter first No';
                  }
                  return null;
                },
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter first No';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  //check for the validation
                  if (mykey.currentState!.validate()) {}
                  setState(() {

                    // simpleInterestModel =
                    //     SimpleInterestModel(principle: principle!, rate: rate!, time: time!);
                    // result = simpleInterestModelModel!.si();
                  });
                },
                child: const Text('Calculate'),
              )
            ],
          ),
        ),
      ),
    );
  }
}