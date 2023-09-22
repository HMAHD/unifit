import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Authentication
import 'package:flutter/material.dart';
import 'package:unifit/pages/credit.dart';
import 'package:unifit/pages/dashboard.dart';
import 'package:unifit/pages/help.dart';
import 'package:unifit/pages/logs.dart';
import 'package:unifit/pages/privacy_policy.dart';
import 'package:unifit/pages/settings.dart';
import 'package:unifit/pages/user_profile.dart';
import 'package:unifit/widgets/my_drawer_header.dart';

import '../Auth/user_auth/presentation/pages/login_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  Future<void> _signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut(); // Sign the user out
      Navigator.of(context).pop(); // Close the drawer

      // After signing out, navigate to the login page (replace 'LoginPage' with your actual login page)
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginPage(),
      ));
    } catch (e) {
      print("Error during sign out: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const MyHeaderDrawer(),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text(
              'Dashboard',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              'Profile',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserProfile()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text(
              'Credit',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Credit()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text(
              'Transaction',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LogsPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text(
              'Help & Support',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Help()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.security),
            title: const Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Privacy()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              'Logout',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => _signOut(context), // Call the _signOut function
          ),
        ],
      ),
    );
  }
}
