import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unifit/pages/credit.dart';
import 'package:unifit/pages/dashboard.dart';
import 'package:unifit/pages/edit_profile.dart';
import 'package:unifit/pages/help.dart';
import 'package:unifit/pages/privacy_policy.dart';
import 'package:unifit/pages/user_profile.dart';
import 'package:unifit/widgets/drawer_menu.dart';

/// A Flutter widget representing a settings screen.
///
/// The `Settings` widget builds a `Scaffold` widget that provides a basic structure for the screen.
/// It includes an `AppBar` at the top with a custom background color, a fixed height, and rounded borders.
/// The `AppBar` contains a leading icon button that opens a menu, a centered title with a custom font and style,
/// and a row of action icons on the right side.
///
/// The body of the screen is a `Column` widget that contains a container with a light green background color and padding.
/// Inside the container, there are two sections: "Options" and "Actions".
/// Each section is represented by a `Text` widget with a bold font and a list of `SettingsItem` widgets.
///
/// The `SettingsItem` widget represents a single item in the settings list.
/// It includes an icon, a title, and an `onTap` callback function.
/// The icon and title are displayed in a row inside a container with a white background color and rounded borders.
/// When the user taps on the item, the `onTap` callback function is called.
///
/// At the bottom of the screen, there is a custom back button widget called `CustomBackButton`.
/// It displays an arrow back icon and a text label.
/// When the user taps on the button, the `onPressed` callback function is called.
/// In this case, it uses the `Navigator.pop` function to go back to the previous screen.
///
/// The `Settings` widget can be used as a standalone screen or integrated into a larger application.
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/// A custom back button widget that can be used in Flutter applications.
///
/// The [CustomBackButton] widget displays a container with a rounded border and a background color.
/// Inside the container, there is an arrow back icon and a text label.
/// When the button is pressed, the [onPressed] callback function is called.
class CustomBackButton extends StatelessWidget {
  final VoidCallback onPressed;

  /// Creates a [CustomBackButton] widget.
  ///
  /// The [onPressed] parameter is a required callback function that is called when the button is pressed.
  const CustomBackButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Dashboard()),
          );
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width, height / 13),
          foregroundColor: Colors.white,
          backgroundColor: HexColor('19a49c'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        child: const Text(
          'Back to Dashboard',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 35),
          getCustomAppBar(context),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(18),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromARGB(255, 197, 250, 235),
                ),

                //color: Color(0xFFE4F7F2),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Options',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    SettingsItem(
                      icon: Icons.person,
                      title: 'Edit Profile',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditProfile()),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    // SettingsItem(
                    //   icon: Icons.security,
                    //   title: 'Security',
                    //   onTap: () {
                    //     // Navigate to Security page
                    //   },
                    // ),
                    // SizedBox(height: 10),
                    // SettingsItem(
                    //   icon: Icons.notifications,
                    //   title: 'Notification',
                    //   onTap: () {
                    //     // Navigate to Notification page
                    //   },
                    // ),
                    //SizedBox(height: 10),
                    SettingsItem(
                      icon: Icons.payment,
                      title: 'Credit',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Credit()),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    // Text(
                    //   'Actions',
                    //   style: TextStyle(
                    //     fontSize: 24,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    //SizedBox(height: 10),
                    SettingsItem(
                      icon: Icons.privacy_tip,
                      title: 'Privacy Policy',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Privacy()),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    SettingsItem(
                      icon: Icons.help,
                      title: 'Help & Support',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Help()),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    SettingsItem(
                        icon: Icons.logout,
                        title: 'Log Out',
                        onTap: () => exit(0)),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
          Spacer(), // Add space to push the button to the bottom
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomBackButton(
              onPressed: () {
                // Handle back button action here
                Navigator.pop(
                    context); // Example: Go back to the previous screen
              },
            ),
          ),
        ],
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
              blurRadius: 2,
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

PreferredSizeWidget getCustomAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize:
        const Size.fromHeight(140.0), // Set the preferred height for the AppBar
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 0,
              ),
              child: IconButton(
                padding: const EdgeInsets.only(left: 12, bottom: 20),
                icon: const Icon(
                  Icons.menu,
                  color: Color.fromRGBO(48, 69, 91, 1.000),
                  size: 45,
                ),
                tooltip: 'menu Icon',
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            );
          },
        ),
        title: const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            "Settings",
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
