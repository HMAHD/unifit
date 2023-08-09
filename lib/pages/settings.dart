// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

@override
AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
    backgroundColor: const Color.fromARGB(220, 28, 232, 164),
    toolbarHeight: 100,
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(70),
        topRight: Radius.circular(70),
        bottomRight: Radius.circular(70),
        bottomLeft: Radius.circular(70),
      ),
    ),
    leading: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Settings()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.menu,
          size: 40,
          color: Colors.black,
        ),
      ),
    ),
    title: Center(
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 32,
          fontFamily: 'Poppins',
        ),
      ),
    ),
    actions: [
      InkWell(
        onTap: () {
          // Handle person icon click
          // You can navigate to another page or perform other actions
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            child: Icon(
              Icons.person,
              size: 40,
              color: Colors.black,
            ),
          ),
        ),
      ),
      SizedBox(width: 26),
    ],
  );
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'Settings'), // Pass the title here
      body: Container(
        color: Color(0xFFE4F7F2),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SettingsItem(
              icon: Icons.person,
              title: 'Edit Profile',
              onTap: () {
                // Navigate to Edit Profile page
              },
            ),
            SizedBox(height: 20),
            SettingsItem(
              icon: Icons.security,
              title: 'Security',
              onTap: () {
                // Navigate to Security page
              },
            ),
            SizedBox(height: 20),
            SettingsItem(
              icon: Icons.notifications,
              title: 'Notification',
              onTap: () {
                // Navigate to Notification page
              },
            ),
            SizedBox(height: 20),
            SettingsItem(
              icon: Icons.payment,
              title: 'Payment',
              onTap: () {
                // Navigate to Payment page
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const SettingsItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.black, size: 30),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
