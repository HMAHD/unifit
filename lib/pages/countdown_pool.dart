import 'package:flutter/material.dart';
import 'dart:async';

class Countdown_Pool extends StatefulWidget {
  const Countdown_Pool({Key? key}) : super(key: key);

  @override
  State<Countdown_Pool> createState() => _Countdown_PoolState();
}

class _Countdown_PoolState extends State<Countdown_Pool> {
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
    // You can use _counter and _formatTime to display the countdown timer in your widget.
     return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(220, 28, 232, 164),  toolbarHeight: 100,
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),

        )
      )
    );

  }
}



/*
    Timer.periodic(const Duration(seconds: 1), (timer) { // Use Timer.periodic
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          timer.cancel(); // Cancel the timer when countdown reaches 0
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
      return SafeArea(
      child: Center(
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
                'Deposit',
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
                    width: 40,
                  ),
                ],
              )
            ],
          ),
      body: Column(
        children: [
          // Add the countdown timer to the body
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Countdown: $_secondsRemaining seconds',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // ... your existing widgets

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
        ],
      ),
    )
    )
    );
  }
}*/