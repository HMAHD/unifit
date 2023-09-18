import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unifit/pages/dashboard.dart';

import 'package:unifit/pages/user_profile.dart';
import 'package:unifit/widgets/drawer_menu.dart';

class LogsPage extends StatefulWidget {
  const LogsPage({Key? key}) : super(key: key);

  @override
  State<LogsPage> createState() => _LogsPageState();
}

class _LogsPageState extends State<LogsPage> {
  @override
  Widget build(BuildContext context) {
    double devwidth = MediaQuery.of(context).size.width;
    double devheight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 35),
          getCustomAppBar(context),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(right: 100.0),
            child: SizedBox(
              width: 500.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Transactions Details',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 1.77,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(25),
              child: Container(
                width: devwidth * 0.95,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: HexColor('#44484f'),
                    width: devheight * 0.0020,
                  ),
                  color: HexColor('ffffff'),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        const Padding(
                          padding: EdgeInsets.only(right: 100.0),
                          child: SizedBox(
                            width: 500.0,
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.0),
                            ),
                          ),
                        ),

                        const SizedBox(
                            height: 20), // Added SizedBox for spacing
                        SizedBox(
                          width: 314,
                          height: 44.91,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 227.63,
                                top: 14.55,
                                child: SizedBox(
                                  width: 86.37,
                                  child: Text(
                                    'LKR 100.00',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFFFF2D00),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 55.41,
                                top: 1.74,
                                child: SizedBox(
                                  width: 99.54,
                                  height:
                                      50.0, // Adjust the height to accommodate both texts
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Payment',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      // Add some space between the texts
                                      Text(
                                        '21/06/2023',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9.24,
                                top: 1.52,
                                child: Container(
                                  width:
                                      40.38, // Set the width and height to make a square
                                  height: 40.38,
                                  decoration: BoxDecoration(
                                    color: const Color(
                                        0xFF19A49C), // Background color of the square
                                    borderRadius: BorderRadius.circular(
                                        5.0), // Optional: Add rounded corners
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'G',
                                      style: TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                            height: 20), // Added SizedBox for spacing
                        SizedBox(
                          width: 314,
                          height: 44.91,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 227.63,
                                top: 14.55,
                                child: SizedBox(
                                  width: 86.37,
                                  child: Text(
                                    'LKR 100.00',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: HexColor('1cab87'),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 55.41,
                                top: 1.74,
                                child: SizedBox(
                                  width: 99.54,
                                  height:
                                      50.0, // Adjust the height to accommodate both texts
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Payment',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      // Add some space between the texts
                                      Text(
                                        '21/06/2023',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9.24,
                                top: 1.52,
                                child: Container(
                                  width:
                                      40.38, // Set the width and height to make a square
                                  height: 40.38,
                                  decoration: BoxDecoration(
                                    color: HexColor(
                                        'a4a4d4'), // Background color of the square
                                    borderRadius: BorderRadius.circular(
                                        5.0), // Optional: Add rounded corners
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'T',
                                      style: TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                            height: 20), // Added SizedBox for spacing
                        SizedBox(
                          width: 314,
                          height: 44.91,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 227.63,
                                top: 14.55,
                                child: SizedBox(
                                  width: 86.37,
                                  child: Text(
                                    'LKR 100.00',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFFFF2D00),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 55.41,
                                top: 1.74,
                                child: SizedBox(
                                  width: 99.54,
                                  height:
                                      50.0, // Adjust the height to accommodate both texts
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Payment',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      // Add some space between the texts
                                      Text(
                                        '22/06/2023',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9.24,
                                top: 1.52,
                                child: Container(
                                  width:
                                      40.38, // Set the width and height to make a square
                                  height: 40.38,
                                  decoration: BoxDecoration(
                                    color: const Color(
                                        0xFF19A49C), // Background color of the square
                                    borderRadius: BorderRadius.circular(
                                        5.0), // Optional: Add rounded corners
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'G',
                                      style: TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                            height: 20), // Added SizedBox for spacing
                        SizedBox(
                          width: 314,
                          height: 44.91,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 227.63,
                                top: 14.55,
                                child: SizedBox(
                                  width: 86.37,
                                  child: Text(
                                    'LKR 100.00',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFFFF2D00),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 55.41,
                                top: 1.74,
                                child: SizedBox(
                                  width: 99.54,
                                  height:
                                      50.0, // Adjust the height to accommodate both texts
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Payment',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      // Add some space between the texts
                                      Text(
                                        '23/06/2023',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9.24,
                                top: 1.52,
                                child: Container(
                                  width:
                                      40.38, // Set the width and height to make a square
                                  height: 40.38,
                                  decoration: BoxDecoration(
                                    color: const Color(
                                        0xFF19A49C), // Background color of the square
                                    borderRadius: BorderRadius.circular(
                                        5.0), // Optional: Add rounded corners
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'G',
                                      style: TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                            height: 20), // Added SizedBox for spacing
                        SizedBox(
                          width: 314,
                          height: 44.91,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 227.63,
                                top: 14.55,
                                child: SizedBox(
                                  width: 86.37,
                                  child: Text(
                                    'LKR 100.00',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFFFF2D00),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 55.41,
                                top: 1.74,
                                child: SizedBox(
                                  width: 99.54,
                                  height:
                                      50.0, // Adjust the height to accommodate both texts
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Payment',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      // Add some space between the texts
                                      Text(
                                        '24/06/2023',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9.24,
                                top: 1.52,
                                child: Container(
                                  width:
                                      40.38, // Set the width and height to make a square
                                  height: 40.38,
                                  decoration: BoxDecoration(
                                    color: const Color(
                                        0xFF1CE8A4), // Background color of the square
                                    borderRadius: BorderRadius.circular(
                                        5.0), // Optional: Add rounded corners
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'P',
                                      style: TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                            height: 20), // Added SizedBox for spacing
                        SizedBox(
                          width: 314,
                          height: 44.91,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 227.63,
                                top: 14.55,
                                child: SizedBox(
                                  width: 86.37,
                                  child: Text(
                                    'LKR 100.00',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFFFF2D00),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 55.41,
                                top: 1.74,
                                child: SizedBox(
                                  width: 99.54,
                                  height:
                                      50.0, // Adjust the height to accommodate both texts
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Payment',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      // Add some space between the texts
                                      Text(
                                        '25/06/2023',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9.24,
                                top: 1.52,
                                child: Container(
                                  width:
                                      40.38, // Set the width and height to make a square
                                  height: 40.38,
                                  decoration: BoxDecoration(
                                    color: const Color(
                                        0xFF1CE8A4), // Background color of the square
                                    borderRadius: BorderRadius.circular(
                                        5.0), // Optional: Add rounded corners
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'P',
                                      style: TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                            height: 20), // Added SizedBox for spacing
                        SizedBox(
                          width: 314,
                          height: 44.91,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 227.63,
                                top: 14.55,
                                child: SizedBox(
                                  width: 86.37,
                                  child: Text(
                                    'LKR 500.00',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF1DAB87),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 55.41,
                                top: 1.74,
                                child: SizedBox(
                                  width: 99.54,
                                  height:
                                      50.0, // Adjust the height to accommodate both texts
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Payment',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      // Add some space between the texts
                                      Text(
                                        '26/06/2023',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9.24,
                                top: 1.52,
                                child: Container(
                                  width:
                                      40.38, // Set the width and height to make a square
                                  height: 40.38,
                                  decoration: BoxDecoration(
                                    color: const Color(
                                        0xFFA4A4D4), // Background color of the square
                                    borderRadius: BorderRadius.circular(
                                        5.0), // Optional: Add rounded corners
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'D',
                                      style: TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),
                        SizedBox(
                          width: 314,
                          height: 44.91,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 227.63,
                                top: 14.55,
                                child: SizedBox(
                                  width: 86.37,
                                  child: Text(
                                    'LKR 500.00',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF1DAB87),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 55.41,
                                top: 1.74,
                                child: SizedBox(
                                  width: 99.54,
                                  height:
                                      50.0, // Adjust the height to accommodate both texts
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Payment',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      // Add some space between the texts
                                      Text(
                                        '26/06/2023',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9.24,
                                top: 1.52,
                                child: Container(
                                  width:
                                      40.38, // Set the width and height to make a square
                                  height: 40.38,
                                  decoration: BoxDecoration(
                                    color: const Color(
                                        0xFFA4A4D4), // Background color of the square
                                    borderRadius: BorderRadius.circular(
                                        5.0), // Optional: Add rounded corners
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'D',
                                      style: TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                            height: 20), // Added SizedBox for spacing
                        SizedBox(
                          width: 314,
                          height: 44.91,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 227.63,
                                top: 14.55,
                                child: SizedBox(
                                  width: 86.37,
                                  child: Text(
                                    'LKR 100.00',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFFFF2D00),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 55.41,
                                top: 1.74,
                                child: SizedBox(
                                  width: 99.54,
                                  height:
                                      50.0, // Adjust the height to accommodate both texts
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Payment',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      // Add some space between the texts
                                      Text(
                                        '26/06/2023',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9.24,
                                top: 1.52,
                                child: Container(
                                  width:
                                      40.38, // Set the width and height to make a square
                                  height: 40.38,
                                  decoration: BoxDecoration(
                                    color: const Color(
                                        0xFF1CE8A4), // Background color of the square
                                    borderRadius: BorderRadius.circular(
                                        5.0), // Optional: Add rounded corners
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'P',
                                      style: TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 18,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Dashboard()),
            );
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(devwidth, devheight / 13),
            foregroundColor: Colors.white,
            backgroundColor: HexColor('19a49c'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          child:
              const Text('Back to Dashboard', style: TextStyle(fontSize: 20)),
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
            "Transactions",
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
