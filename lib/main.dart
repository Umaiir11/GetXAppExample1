import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'View/ViewList.dart';
import 'View/ViewOpacity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ViewList(),
    );
  }
}
