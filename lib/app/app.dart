import 'package:class_app/screen/circle_screen.dart';
import 'package:class_app/screen/column_screen.dart';
import 'package:class_app/screen/containeer_screen.dart';
import 'package:class_app/screen/dashboard.dart';
import 'package:class_app/screen/flexible_expanded_screen.dart';
import 'package:class_app/screen/image_screen.dart';
import 'package:class_app/screen/layout_screen.dart';
import 'package:class_app/screen/list_tile_screen.dart';
import 'package:class_app/screen/row_screen.dart';
import 'package:class_app/screen/si_screen.dart';
import 'package:class_app/screen/student_details_screen.dart';
import 'package:flutter/material.dart';

import '../screen/radio_screen.dart';




class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentDetailsScreen(),
    );
  }
}
