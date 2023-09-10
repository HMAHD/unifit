import 'package:flutter/material.dart';
import 'package:unifit/pages/dashboard.dart';
import 'package:unifit/pages/settings.dart';

class Credit extends StatefulWidget {
  const Credit({super.key});

  @override
  State<Credit> createState() => _CreditState();
}

class _CreditState extends State<Credit> {
  get _calculatedPoolTime => null;

  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    const SizedBox(
      height: 20,
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(220, 28, 232, 164),
          toolbarHeight: 100,
          elevation: 10,
          shape: const RoundedRectangleBorder(
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
              child: const Icon(
                Icons.menu,
                size: 40,
                color: Colors.black,
              ),
            ),
          ),
          title: const Center(
            child: Text(
              'Credit',
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
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
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
              const SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.all(16),
                decoration: const BoxDecoration(
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
                    const Row(
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
                        // IconButton(
                        //   onPressed: () {
                        //     setState(() {
                        //       _amountVisible = !_amountVisible;
                        //     });
                        //   },
                        //   icon: Icon(
                        //     _amountVisible
                        //         ? Icons.visibility_off
                        //         : Icons.visibility,
                        //     color: Colors.white,
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        // Text(
                        //   amountVisible ? 'RS $_creditAmount.00' : 'RS *****',
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 32,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
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
                            child: const Row(
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
                                      // Text(
                                      //   formatTime(_calculatedGymTime),
                                      //   style: TextStyle(
                                      //     color: Colors.blue,
                                      //     fontSize: 16,
                                      //   ),
                                      // ),
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
                                      // Text(
                                      //   formatTime(_calculatedPoolTime),
                                      //   style: TextStyle(
                                      //     color: Colors.blue,
                                      //     fontSize: 16,
                                      //   ),
                                      // ),
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
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 16),
              //   padding: EdgeInsets.all(16),
              //   decoration: BoxDecoration(
              //     color: Color.fromARGB(255, 228, 247, 242),
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              // children: [
              //   InkWell(
              //     // Define an `onTap` callback function that returns a Future.
              //     onTap: () async {
              //       // Use the `Navigator.push` method to navigate to the `QRScannerScreen` widget.
              //       final result = await Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => QRScannerScreen(),
              //         ),
              //       );

              //       // Check if the `result` is not null and is of type String.
              //       if (result != null && result is String) {
              //         // Create a logger instance
              //         var logger = Logger();

              //         // Print the scanned QR code result.
              //         logger.i('Scanned QR code result: $result');

              //         // Now you can decide what to do with the scanned QR code result.
              //         if (result == 'GYM-START') {
              //           // Handle gym start action
              //         } else if (result == 'GYM-END') {
              //           // Handle gym end action
              //         } else if (result == 'POOL-START') {
              //           // Handle pool start action
              //         } else if (result == 'POOL-END') {
              //           // Handle pool end action
              //         } else {
              //           // Handle other cases
              //         }
              //         // Print the scanned QR code result.
              //         logger.i('Scanned QR code result: $result');
              //         // You can now decide what to do with the scanned QR code result.
              //       }
              //     },

              //     child: AnimatedContainer(
              //       duration: Duration(milliseconds: 300),
              //       padding: EdgeInsets.all(15),
              //       // decoration: BoxDecoration(
              //       //   color: const Color.fromARGB(255, 25, 166, 156),
              //       //   borderRadius: BorderRadius.circular(10),
              //       // ),
              //       // child: Row(
              //       //   children: [
              //       //     Icon(
              //       //       Icons.fitness_center,
              //       //       color: Colors.white,
              //       //     ),
              //       //     SizedBox(width: 8),
              //       //     Text(
              //       //       ' GYM',
              //       //       style: TextStyle(
              //       //         color: Colors.white,
              //       //         fontSize: 16,
              //       //       ),
              //       //     ),
              //       //   ],
              //       // ),
              //     ),
              //   ),
              //   InkWell(
              //     // Define an `onTap` callback function that returns a Future.
              //     onTap: () async {
              //       // Use the `Navigator.push` method to navigate to the `QRScannerScreen` widget.
              //       final result = await Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => QRScannerScreen(),
              //         ),
              //       );

              //       // Check if the `result` is not null and is of type String.
              //       if (result != null && result is String) {
              //         // Create a logger instance
              //         var logger = Logger();

              //         // Print the scanned QR code result.
              //         logger.i('Scanned QR code result: $result');

              //         // Now you can decide what to do with the scanned QR code result.
              //         if (result == 'GYM-START') {
              //           // Handle gym start action
              //         } else if (result == 'GYM-END') {
              //           // Handle gym end action
              //         } else if (result == 'POOL-START') {
              //           // Handle pool start action
              //         } else if (result == 'POOL-END') {
              //           // Handle pool end action
              //         } else {
              //           // Handle other cases
              //         }

              //         // Print the scanned QR code result.
              //         logger.i('Scanned QR code result: $result');
              //         // You can now decide what to do with the scanned QR code result.
              //       }
              //     },

              //     child: AnimatedContainer(
              //       duration: Duration(milliseconds: 300),
              //       padding: EdgeInsets.all(15),
              //       // decoration: BoxDecoration(
              //       //   color: const Color.fromARGB(255, 25, 166, 156),
              //       //   borderRadius: BorderRadius.circular(10),
              //       // ),
              //       //child: Row(
              //       //hildren: [
              //       // Icon(
              //       //   Icons.pool,
              //       //   color: Colors.white,
              //       // ),
              //       // SizedBox(width: 8),
              //       // Text(
              //       //   'POOL',
              //       //   style: TextStyle(
              //       //     color: Colors.white,
              //       //     fontSize: 16,
              //       //   ),
              //       // ),
              //       //],
              //       // ),
              //     ),
              //   ),
              // ],
              //),
              //),
              // SizedBox(height: 26),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 16),
              //   padding: EdgeInsets.all(16),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(10),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.5),
              //         spreadRadius: 2,
              //         blurRadius: 5,
              //         offset: Offset(0, 3),
              //       ),
              //     ],
              //   ),
              // child: Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Container(
              //       width: 80,
              //       height: 80,
              //       decoration: BoxDecoration(
              //         color: Colors.grey[300],
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: Icon(
              //         Icons.fitness_center,
              //         color: Colors.black,
              //         size: 40,
              //       ),
              //     ),
              //     SizedBox(width: 16),
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Updates for Gym',
              //             style: TextStyle(
              //               fontSize: 18,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 8),
              //           Text(
              //             // Replace this with actual news text from database
              //             'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget lorem sed leo tincidunt tristique nec eget odio.',
              //             style: TextStyle(
              //               fontSize: 14,
              //               color: Colors.grey[700],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // ),
              /// this is updates for pool box.
              SizedBox(height: 20),

              // Container(
              //   color: Colors.amber,
              //   width: 30,
              //   height: 150,

              // child: TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Enter Amount',
              //   ),
              // ),
              //margin: EdgeInsets.symmetric(horizontal: 16),
              // padding: EdgeInsets.all(16),
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.circular(10),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.5),
              //     spreadRadius: 2,
              //     blurRadius: 5,
              //     offset: Offset(0, 3),
              //   ),
              // ],

              // ),
              // child: Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Container(
              //       width: 80,
              //       height: 80,
              //       decoration: BoxDecoration(
              //         color: Colors.grey[300],
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: Icon(
              //         Icons.pool,
              //         color: Colors.black,
              //         size: 40,
              //       ),
              //     ),
              //     SizedBox(width: 16),
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Updates for Pool',
              //             style: TextStyle(
              //               fontSize: 18,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 8),
              //           Text(
              //             // Replace this with actual news text from database
              //             'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget lorem sed leo tincidunt tristique nec eget odio.',
              //             style: TextStyle(
              //               fontSize: 14,
              //               color: Colors.grey[700],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              //),
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Text(
              //       "Enter Amount:",
              //       style: TextStyle(
              //         fontSize: 12,
              //       ),
              //     ),
              //   ],
              // ),
              // child: Positioned(
              //   left: 16,
              //   top: 13.47,
              //   child: Container(
              //     width: 295,
              //     height: 300,
              //     child: const Row(
              //       mainAxisSize: MainAxisSize.min,
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Text(
              //           'Enter amount:',
              //           style: TextStyle(
              //             color: Color(0xFF6B7280),
              //             fontSize: 12,
              //             fontFamily: 'Roboto',
              //             fontWeight: FontWeight.w500,
              //             height: 1.50,
              //             letterSpacing: 0.30,
              //           ),
              //         ),
              //         const SizedBox(width: 128),
              //         Text(
              //           'Max 5000.00',
              //           textAlign: TextAlign.right,
              //           style: TextStyle(
              //             color: Color(0xFF6B7280),
              //             fontSize: 12,
              //             fontFamily: 'Roboto',
              //             fontWeight: FontWeight.w500,
              //             height: 1.50,
              //             letterSpacing: 0.30,
              //           ),
              //         ),
              //         TextField(
              //           decoration: InputDecoration(
              //             border: OutlineInputBorder(),
              //             labelText: 'Enter Amount',
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              //),

              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),

                  //color: const Color.fromRGBO(70, 245, 202, 1),
                ),
                child: Center(
                  child: Row(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Amount',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
