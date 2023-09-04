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
            padding: EdgeInsets.only(left: 12, top: 20),
            child: Text(
              'You have any question?',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Add a search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
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
