import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 35), // Empty space before the AppBar
          getCustomAppBar(context), // Custom AppBar
          // Add other content of the page below the AppBar
        ],
      ),
    );
  }

  PreferredSizeWidget getCustomAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize:
          const Size.fromHeight(140.0), // Set the preferred height for the AppBar
      child: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'menu Icon',
          onPressed: () {},
        ),
        title: const Text(
          "Diposite",
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
}