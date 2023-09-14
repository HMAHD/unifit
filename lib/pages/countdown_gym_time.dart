import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unifit/pages/dashboard.dart';
import 'dart:async';

import 'package:unifit/pages/user_profile.dart';
import 'package:unifit/widgets/drawer_menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late Timer _timer;

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _counter++;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _startTimer(); // Start the timer automatically when the widget is initialized.
  }

  @override
  void dispose() {
    if (_timer.isActive) {
      _timer.cancel();
    }
    super.dispose();
  }

  String _formatTime(int seconds) {
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int remainingSeconds = seconds % 60;

    return '$hours:${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 35),
            getCustomAppBar(context),
            const SizedBox(height: 35.0),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Center the children horizontally
                children: [
                  Text(
                    'Time Spent GYM:',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'popins',
                    ),
                  ),
                  // Icon(
                  //   Icons., // Replace with your work-related icon
                  //   size: 40,
                  //   color: Colors.red, // Set the color to red
                  // ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              _formatTime(_counter),
              style: const TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'YourDesiredFont',
              ),
            ),
            const SizedBox(height: 30.0),
            const SizedBox(height: 30.0),
            Padding(
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
                  'Finish',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
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
                  'Back to Home',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
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
            "Countdown",
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
