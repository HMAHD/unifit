import 'package:flutter/material.dart';
import 'package:unifit/pages/dashboard.dart';

class Reload extends StatefulWidget {
  const Reload({super.key});

  @override
  State<Reload> createState() => _ReloadState();
}

class _ReloadState extends State<Reload> {
  @override
  Widget build(BuildContext context) {
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
                  MaterialPageRoute(builder: (context) => Dashboard()),
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
              'Reload',
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
        body: Column(
          children: [
            SizedBox(height: 30),
            Image.asset(
              "assets/10.png",
              width: 250,
              height: 250,
            ),
            const SizedBox(
                height: 20), // Add spacing between the image and text
            const Text(
              "Transfer Successful",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 7,
            ),
            const Text(
              'Transfers are reviewed which may result in delays or funds being frozen.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 20),

            const Text("500 RS",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                )),
            SizedBox(height: 20),

            // ElevatedButton(onPressed: () {}, child: Text("Back to Home"))
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 3.5,
                minimumSize: const Size(330, 60),
                backgroundColor: const Color.fromARGB(220, 28, 232, 164),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                );
              },
              child: const Text(
                "Back to Dashbord",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            // Add other widgets below the text
          ],
        ),
      ),
    );
  }
}
