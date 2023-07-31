import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _EditProfileState();
}

class _EditProfileState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 35), // Empty space before the AppBar
          getCustomAppBar(context), // Custom AppBar
          const SizedBox(height: 20), // Empty space after AppBar

          // Add other content of the page below the AppBar
          const Text(
            'Create an account', // Replace this with the desired text
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Text(
            'Unlock your fitness potential  on UNIFIT!', // Replace this with the desired text
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),

          // Left-aligned text using Row widget
        ],
      ),
    );
  }

  PreferredSizeWidget getCustomAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(
          140.0), // Set the preferred height for the AppBar
      child: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "UniFit",
            style: TextStyle(
              color: Color(0xFF0C303D),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: null, // Remove the SizedBox to keep the AppBar title centered
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/unifit_logo.png', // Replace with your actual image path
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],

        titleSpacing: 0.0,
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
}
