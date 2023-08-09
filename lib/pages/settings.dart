// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
      body: Center(
        child: Text('Settings Page Content'),
      ),
    );
  }
}
