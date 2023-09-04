// Import required packages
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
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
            onTap: () {},
            child: const Icon(
              Icons.menu,
              size: 40,
              color: Color.fromRGBO(48, 69, 91, 1.000),
            ),
          ),
        ),
        title: const Center(
          child: Text(
            'Help & Support',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(48, 69, 91, 1.000),
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
                  color: Color.fromRGBO(48, 69, 91, 1.000),
                ),
              ),
              const SizedBox(
                width: 26,
              ),
            ],
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12, top: 10),
            child: Text(
              'You have any question?',
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 55, 55, 55),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Add a search bar without outline
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none, // Remove the outline
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12, top: 06, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Frequently Asked',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle the "View All" action here
                  },
                  child: const Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors
                          .black, // You can change the color to your preference
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Add a Card 1
          Padding(
            padding: const EdgeInsets.all(08.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'How do I create a Smartpay account?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 40, 51, 85),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'You can create a Smartpay account by:downlord and open the Sartpay application first then select...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //card 2
          Padding(
            padding: const EdgeInsets.all(08.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'How to create card for Smartpay?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 40, 51, 85),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'You can select the craete card menu then select "Add New Card" select the continue button then you...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //card 3
          Padding(
            padding: const EdgeInsets.all(08.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'How to Top Up on Smartpay?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 40, 51, 85),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Click the Top Up menu then select the amount of money and then click the  "top up now"button...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Add elevator button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(width, height / 13),
                foregroundColor: Colors.white,
                backgroundColor: HexColor('19a49c'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              child: const Text(
                'Back to Home',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ], //children
      ),
    );
  }
}
