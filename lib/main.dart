import 'package:flutter/material.dart';
// Import for kReleaseMode// Import the logger package
import 'package:provider/provider.dart';
import 'package:unifit/pages/intro_page.dart';
import 'package:unifit/pages/timer_state.dart';
// Import your TimerState class

//import 'package:unifit/pages/dashboard.dart';

// Now you can use the 'logger' instance wherever you need logging
// You can then use it anywhere in your code using methods like i, d, w, etc. (info, debug, warning, etc.)
// logger.i('Building MyApp');
//logger.d('Building MyHomePage');
//logger.w('Button pressed');

void main() {
  runApp(
    ChangeNotifierProvider(
      //The 'ChangeNotifierProvider' should be wrapped around the MaterialApp
      create: (context) => TimerState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: introPage(),
    );
  }
}
