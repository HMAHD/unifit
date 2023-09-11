import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:unifit/pages/settings.dart';
import 'package:unifit/pages/scanner.dart';
import 'package:unifit/pages/user_profile.dart'; // Adjust the import path based on your project structure

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
    return SafeArea(
      child: Scaffold(
        //drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(220, 28, 232, 164),
          toolbarHeight: 100,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
              child: Icon(
                Icons.menu,
                size: 40,
                color: Colors.black,
              ),
            ),
          ),
          title: Center(
            child: Text(
              'Dashboard',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          actions: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Define the navigation action here, for example, navigate to a profile page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfile()),
                    );
                  },
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
                SizedBox(
                  width: 26,
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
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
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          _amountVisible ? 'RS $_creditAmount.00' : 'RS *****',
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
                      'Account ID: 1234567890',
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
                              MaterialPageRoute(
                                  builder: (context) => GymPage()),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Gym',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
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
                              MaterialPageRoute(
                                  builder: (context) => PoolPage()),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pool',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
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
              SizedBox(height: 26),
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
                            builder: (context) => QRScannerScreen(),
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
                            builder: (context) => QRScannerScreen(),
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
              SizedBox(height: 26),
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
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget lorem sed leo tincidunt tristique nec eget odio.',
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
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget lorem sed leo tincidunt tristique nec eget odio.',
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
            ],
          ),
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
