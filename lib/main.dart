import 'package:flutter/material.dart';
//import 'package:unifit/pages/dashboard.dart';
import 'package:unifit/pages/intro_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: introPage(),
      title: 'QR Scanner',
      
    );
  }
}
