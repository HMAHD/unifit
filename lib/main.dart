import 'package:flutter/material.dart';
import 'package:unifit/pages/intro_page.dart';

import 'package:flutter/foundation.dart'; // Import for kReleaseMode
import 'package:logger/logger.dart'; // Import the logger package
import 'package:provider/provider.dart';
import 'package:unifit/pages/timer_state.dart'; // Import your TimerState class


//import 'package:unifit/pages/dashboard.dart';

final logger = Logger(
  printer: PrettyPrinter(methodCount: 0),
  level: !kReleaseMode ? Level.debug : Level.info,
);
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
    logger.i('Building MyApp');
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: introPage(),
    );
  }
}
