import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:unifit/Auth/user_auth/presentation/pages/login_page.dart';
import 'package:unifit/Auth/user_auth/presentation/pages/sign_up_page.dart';
import 'package:unifit/pages/dashboard.dart';
import 'package:unifit/pages/intro_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniFit',
      routes: {
        '/': (context) => const introPage(
              // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
              child: LoginPage(),
            ),
        '/login': (context) => const LoginPage(),
        '/signUp': (context) => const SignUpPage(),
        '/home': (context) => const Dashboard(),
      },
    );
  }
}
