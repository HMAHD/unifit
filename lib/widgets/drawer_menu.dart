import 'package:flutter/material.dart';
import 'package:unifit/pages/dashboard.dart';
import 'package:unifit/pages/deposit.dart';
import 'package:unifit/pages/edit_profile.dart';
import 'package:unifit/pages/help.dart';
import 'package:unifit/pages/logs.dart';
import 'package:unifit/pages/privacy_policy.dart';
import 'package:unifit/pages/user_profile.dart';
import 'package:unifit/widgets/my_drawer_header.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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
              'Deposit',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Payment_Gateway()),
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
            leading: const Icon(Icons.edit),
            title: const Text(
              'Edit Profile',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditProfile()),
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
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Settings()),
              // );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              'Logout',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Logout()),
              // );
            },
          ),
        ],
      ),
    );
  }
}
