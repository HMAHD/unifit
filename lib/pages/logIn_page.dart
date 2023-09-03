// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => EditProfileState();
}

PreferredSizeWidget getCustomAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize:
        Size.fromHeight(140.0), // Set the preferred height for the AppBar
    child: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        tooltip: 'menu Icon',
        onPressed: () {},
      ),
      title: const Text(
        "UniFit",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.account_box,
          ),
          tooltip: 'Account Icon',
          onPressed: () {},
        ),
      ],
      titleSpacing: 00.0,
      centerTitle: true,
      toolbarHeight: 100.2,
      toolbarOpacity: 0.8,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      elevation: 0.00,
      backgroundColor: const Color.fromRGBO(70, 245, 202, 1),
    ),
  );
}
