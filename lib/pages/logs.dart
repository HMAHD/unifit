import 'package:flutter/material.dart';
import 'dart:ui';

class LogsPage extends StatefulWidget {
  const LogsPage({Key? key}) : super(key: key);

  @override
  State<LogsPage> createState() => _LogsPageState();
}

class _LogsPageState extends State<LogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          getCustomAppBar(context),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(right: 100.0),
                    child: SizedBox(
                      width: 500.0,
                      child: Text(
                        'Transactions Details',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          height: 1.77,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30), // Added SizedBox for spacing
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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

                  const SizedBox(height: 20), // Added SizedBox for spacing
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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

                  const SizedBox(height: 20), // Added SizedBox for spacing
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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

                  const SizedBox(height: 20), // Added SizedBox for spacing
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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

                  const SizedBox(height: 20), // Added SizedBox for spacing
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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

                  const SizedBox(height: 20), // Added SizedBox for spacing
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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

                  const SizedBox(height: 20), // Added SizedBox for spacing
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
          InkWell(
            onTap: () {
              /*Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const LoginPage()),
              );*/
            },
            child: Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  "Back To Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

PreferredSizeWidget getCustomAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize:
        const Size.fromHeight(140.0), // Set the preferred height for the AppBar
    child: AppBar(
      leading: IconButton(
        color: const Color(0xFF30445A),
        icon: const Icon(Icons.menu),
        tooltip: 'menu Icon',
        onPressed: () {},
        iconSize: 35,
      ),
      title: const Text(
        "Transactions",
        style: TextStyle(
          color: Color(0xFF30445A),
          fontSize: 30.0,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.account_box,
            color: Color(0xFF30445A),
          ),
          tooltip: 'Account Icon',
          onPressed: () {},
          iconSize: 35,
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
