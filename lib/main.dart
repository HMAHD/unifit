import 'package:flutter/material.dart';
import 'package:unifit/pages/intro_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

<<<<<<< HEAD
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {}
}
=======
void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroPage(),
    );
  }
>>>>>>> main
