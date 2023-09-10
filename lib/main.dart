import 'package:flutter/foundation.dart'; // Import for kReleaseMode
import 'package:flutter/material.dart';
import 'package:logger/logger.dart'; // Import the logger package
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:unifit/pages/timer_state.dart';
import 'package:unifit/pages/wrapper.dart'; // Import your TimerState class


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

// Supabase Implementation
void main() async {
  await Supabase.initialize(
    url: 'https://vhnfcojoavufhdpjuoau.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZobmZjb2pvYXZ1ZmhkcGp1b2F1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTAxMDg0NjEsImV4cCI6MjAwNTY4NDQ2MX0._KRwYJJxgp1QMeHmWnc9P4GWkx22v7gkc3x1e0RiOo8',
  );
  runApp(
    ChangeNotifierProvider(
      //The 'ChangeNotifierProvider' should be wrapped around the MaterialApp
      create: (context) => TimerState(),
      child: const MyApp(),
    ),
  );
}

// Get a reference your Supabase client
final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    logger.i('Building UniFit');
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,

      //home: introPage(),
      home: Wrapper(),

    );
  }
}
