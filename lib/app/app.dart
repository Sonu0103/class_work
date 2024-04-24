import 'package:class_app/screen/circle_screen.dart';
import 'package:class_app/screen/column_screen.dart';
import 'package:class_app/screen/dashboard.dart';
import 'package:class_app/screen/layout_screen.dart';
import 'package:class_app/screen/si_screen.dart';
import 'package:flutter/material.dart';

import '../screen/radio_screen.dart';




class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RadioScreen(),
    );
  }
}
