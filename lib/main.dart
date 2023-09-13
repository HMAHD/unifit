import 'package:flutter/material.dart';
import 'package:unifit/pages/home.dart';
//import 'package:unifit/pages/dashboard.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  const MyApp({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
