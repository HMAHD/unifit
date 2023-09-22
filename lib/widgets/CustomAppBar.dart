import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double appBarHeight = MediaQuery.of(context).size.height * 0.1;

    return PreferredSize(
      preferredSize: Size.fromHeight(appBarHeight),
      child: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20.0,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: const Color.fromRGBO(70, 245, 202, 1),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color.fromRGBO(48, 69, 91, 1.000),
            size: 30,
          ),
          tooltip: 'menu Icon',
          onPressed: () {
            // Handle menu icon click
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_box,
              color: Color.fromRGBO(48, 69, 91, 1.000),
              size: 30,
            ),
            tooltip: 'Account Icon',
            onPressed: () {
              // Handle account icon click
            },
          ),
          SizedBox(width: 26),
        ],
        titleSpacing: 0.0,
        centerTitle: true,
        elevation: 0.00,
      ),
    );
  }
}
