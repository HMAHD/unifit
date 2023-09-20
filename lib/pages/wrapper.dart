import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:unifit/pages/dashboard.dart';
import 'package:unifit/pages/login.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  void initState() {
    super.initState();
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    final user = Supabase.instance.client.auth.currentUser;
    if (user != null) {
      // User is logged in, navigate to the dashboard or home page
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              const Dashboard(), // Replace with your dashboard page
        ),
      );
    } else {
      // User is not logged in, navigate to the login page
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              const LoginPage(), // Replace with your login page
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:
            CircularProgressIndicator(), // You can customize the loading UI here
      ),
    );
  }
}
