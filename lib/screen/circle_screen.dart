import 'package:class_app/model/circle_model.dart';
// import 'package:class_app/model/simple_interest_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class AreaCircle extends StatefulWidget {
  const AreaCircle({super.key});
  @override
  State<AreaCircle> createState() => _AreaCircleState();
}
class _AreaCircleState extends State<AreaCircle> {
  final mykey = GlobalKey<FormState>();
  double result = 0;
  double pi = (22/7);
  double? radius;
  CircleModel? circleModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        title: const Text("Area of Circle"),
        backgroundColor: Colors.green[200],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: mykey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter radius';
                  }
                  return null;
                },
                onChanged: (value) {
                  radius = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter radius', border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                  ),

                ),

              ),


              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()) {
                      setState(() {
                        circleModel = CircleModel(radius: radius!);
                        result = circleModel!.area();
                      });
                    }
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              Text(
                'Result: $result',
                style: const TextStyle(fontSize: 20),
              ),
               RichText(
                text : const TextSpan(
                  text: 'Hello ',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize:40,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'bold',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        backgroundColor: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: ' World!',
                    )

                  ]
                ),


              ),
              RichText(
                text : const TextSpan(
                    text: 'M',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize:40,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'y',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,


                        ),
                      ),
                      TextSpan(
                        text: ' name is sonu ',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        )
                      )

                    ]
                ),


              ),


            ],

          ),

        ),
      ),
    );
  }
}