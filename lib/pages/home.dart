//tharusha
import 'package:flutter/material.dart';
import 'package:unifit/pages/user_profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

const Color myHexColor = Color.fromARGB(0, 0, 0, 0);

class _HomeState extends State<Home> {
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
      preferredSize: const Size.fromHeight(
          140.0), // Set the preferred height for the AppBar
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: AppBar(
          leading: IconButton(
            padding: const EdgeInsets.only(left: 12, bottom: 20),
            icon: const Icon(
              Icons.menu,
              color: Color.fromRGBO(48, 69, 91, 1.000),
              size: 45,
            ),
            tooltip: 'menu Icon',
            onPressed: () {},
          ),
          title: const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "Profile",
              style: TextStyle(
                color: Color.fromRGBO(48, 69, 91, 1.000),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              padding: const EdgeInsets.only(right: 32.0, bottom: 20),
              icon: const Icon(
                Icons.account_box,
                color: Color.fromRGBO(48, 69, 91, 1.000),
                size: 45,
              ),
              tooltip: 'Account Icon',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserProfile()),
                );
              },
            ),
          ],
          titleSpacing: 0,
          centerTitle: true,
          toolbarHeight: 90,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
          elevation: 6.0,
          backgroundColor: const Color.fromRGBO(70, 245, 202, 1),
        ),
      ),
    );
  }
}
