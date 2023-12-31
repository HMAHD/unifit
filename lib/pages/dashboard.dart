import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:unifit/backend/auth.dart'; // Import your auth.dart file
import 'package:unifit/pages/gym_scanner.dart';
import 'package:unifit/pages/pool_scanner.dart';
import 'package:unifit/pages/user_profile.dart';

import '../Auth/user_auth/presentation/pages/login_page.dart';
import '../widgets/drawer_menu.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final AuthService _auth = AuthService(); // Initialize the AuthService

  bool isAuthenticated = false;

  @override
  void initState() {
    super.initState();
    checkAuthStatus();
  }

  Future<void> checkAuthStatus() async {
    final authenticated = await _auth.isUserAuthenticated();
    setState(() {
      isAuthenticated = authenticated;
    });

    // If the user is not authenticated, navigate to the login page
    if (!isAuthenticated) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                LoginPage()), // Replace with your login page widget
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isAuthenticated) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Authenticated Page'),
        ),
        body: Center(
          child: Text('This is an authenticated page.'),
        ),
      );
    } else {
      // The user will be redirected to the login page
      return Scaffold(
        appBar: AppBar(
          title: Text('Not Authenticated Page'),
        ),
        body: Center(
          child:
              CircularProgressIndicator(), // You can show a loading indicator here
        ),
      );
    }
  }
}
// Adjust the import path based on your project structure

/// Represents the UI of a dashboard screen in a Flutter application.
///
/// The dashboard screen displays the user's credit balance and calculated time for gym and pool activities.
/// It also includes buttons for navigating to the gym and pool pages, as well as displaying updates for gym and pool activities.
///
/// Example Usage:
///
/// ```dart
/// Dashboard()
/// ```
///
/// The screen is divided into sections:
///
/// 1. App Bar: Displays the title of the dashboard and a menu icon for accessing settings.
///
/// 2. Credit Balance: Displays the user's credit balance. The actual amount can be toggled to be visible or hidden.
///
/// 3. Gym and Pool Buttons: Allows the user to navigate to the gym and pool pages. Displays the calculated time for each activity.
///
/// 4. Gym and Pool Updates: Displays updates for gym and pool activities. The content can be replaced with actual news text from a database.
///
/// Note: This code snippet is a part of the `Dashboard` class.//
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _amountVisible = true; // Used to toggle amount visibility

  final int _creditAmount = 5000; // Example credit amount in Rs
  int _calculatedGymTime = 0; // Calculated gym time in minutes
  int _calculatedPoolTime = 0; // Calculated pool time in minutes

  final int gymCostPerHour = 100;
  final int poolCostPerHour = 100;

  final logger = Logger();

  @override
  void initState() {
    super.initState();
    _calculatedGymTime = (_creditAmount / gymCostPerHour).floor() * 60;
    _calculatedPoolTime = (_creditAmount / poolCostPerHour).floor() * 60;
  }

  String formatTime(int minutes) {
    int hours = minutes ~/ 60;
    int remainingMinutes = minutes % 60;
    return '$hours h $remainingMinutes min';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 35),
            getCustomAppBar(context),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 164, 164, 212),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Credit Balance',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _amountVisible = !_amountVisible;
                          });
                        },
                        icon: Icon(
                          _amountVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        _amountVisible ? 'RS $_creditAmount.00' : 'RS ****.**',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Account ID: 0000000001',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GymPage()),
                          );
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: MediaQuery.of(context).size.width * 0.4,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.fitness_center,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Gym',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      formatTime(_calculatedGymTime),
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PoolPage()),
                          );
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: MediaQuery.of(context).size.width * 0.4,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.pool,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pool',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      formatTime(_calculatedPoolTime),
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 247, 242),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    // Define an `onTap` callback function that returns a Future.
                    onTap: () async {
                      // Use the `Navigator.push` method to navigate to the `QRScannerScreen` widget.
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QRCodeScannerPage(),
                        ),
                      );

                      // Check if the `result` is not null and is of type String.
                      if (result != null && result is String) {
                        // Create a logger instance
                        var logger = Logger();

                        // Print the scanned QR code result.
                        logger.i('Scanned QR code result: $result');

                        // Now you can decide what to do with the scanned QR code result.
                        if (result == 'GYM-START') {
                          // Handle gym start action
                        } else if (result == 'GYM-END') {
                          // Handle gym end action
                        } else if (result == 'POOL-START') {
                          // Handle pool start action
                        } else if (result == 'POOL-END') {
                          // Handle pool end action
                        } else {
                          // Handle other cases
                        }
                        // Print the scanned QR code result.
                        logger.i('Scanned QR code result: $result');
                        // You can now decide what to do with the scanned QR code result.
                      }
                    },

                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 25, 166, 156),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.fitness_center,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Text(
                            ' GYM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    // Define an `onTap` callback function that returns a Future.
                    onTap: () async {
                      // Use the `Navigator.push` method to navigate to the `QRScannerScreen` widget.
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PoolQRScanner(),
                        ),
                      );

                      // Check if the `result` is not null and is of type String.
                      if (result != null && result is String) {
                        // Create a logger instance
                        var logger = Logger();

                        // Print the scanned QR code result.
                        logger.i('Scanned QR code result: $result');

                        // Now you can decide what to do with the scanned QR code result.
                        if (result == 'GYM-START') {
                          // Handle gym start action
                        } else if (result == 'GYM-END') {
                          // Handle gym end action
                        } else if (result == 'POOL-START') {
                          // Handle pool start action
                        } else if (result == 'POOL-END') {
                          // Handle pool end action
                        } else {
                          // Handle other cases
                        }

                        // Print the scanned QR code result.
                        logger.i('Scanned QR code result: $result');
                        // You can now decide what to do with the scanned QR code result.
                      }
                    },

                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 25, 166, 156),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.pool,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'POOL',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.fitness_center,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Updates for Gym',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          // Replace this with actual news text from database
                          'The NSBM Gymnasium is a state-of-the-art facility that is equipped with the latest equipment and technology to ensure that you get the best out of your workout.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.pool,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Updates for Pool',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          // Replace this with actual news text from database
                          'With its state-of-the-art, international-level swimming pool and additional facilities, the NSBM Swimming Club is your getaway to a World of aquatic excellence and camaraderie.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class GymPage extends StatelessWidget {
  const GymPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gym')),
      body: Center(
        child: Text('Gym Page Content'),
      ),
    );
  }
}

class PoolPage extends StatelessWidget {
  const PoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pool')),
      body: Center(
        child: Text('Pool Page Content'),
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
                  //
                  Scaffold.of(context).openDrawer();
                },
              ),
            );
          },
        ),
        title: const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            "Dashboard",
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
