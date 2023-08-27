/// The `QRScannerScreen` class is a StatefulWidget that displays a QR scanner screen. It initializes the QR scanner, handles the scanned QR code, and updates the UI based on the session type and timer state.
///
/// Example Usage:
/// ```dart
/// QRScannerScreen qrScannerScreen = QRScannerScreen();
/// qrScannerScreen.initState();
/// qrScannerScreen.onQRViewCreated(controller);
/// qrScannerScreen.build(context);
/// qrScannerScreen.dispose();
/// ```
///
/// Inputs:
/// - `context`: The `BuildContext` object used to access the `TimerState` provider.
/// - `scanData`: The scanned QR code data.
///
/// Flow:
/// - The `initState` method is called when the screen is initialized. It starts the timer by calling the `startTimer` method of the `TimerState` provider.
/// - The `onQRViewCreated` method is called when the QR view is created. It assigns the QR controller and listens to the scanned data stream.
/// - When a QR code is scanned and `isScanned` is false, the code checks if the scanned code is for the gym or pool session.
/// - If the code is for the gym session, the `sessionType` is set to 'Gym'. If it is for the pool session, the `sessionType` is set to 'Pool'.
/// - If the `sessionType` is not empty, the code sets `isScanned` to true and gets the `TimerState` provider.
/// - If the `sessionType` is 'Gym', the timer is stopped by calling the `stopTimer` method of the `TimerState` provider.
/// - If the `sessionType` is 'Pool', the timer is started by calling the `startTimer` method of the `TimerState` provider.
/// - The UI is updated by calling `setState` to display the session status or total time spent.
/// - The `build` method is called to build the UI of the QR scanner screen.
/// - The `dispose` method is called when the screen is disposed. It disposes the QR controller.
///
/// Outputs:
/// - The UI of the QR scanner screen is displayed, including the QR view, a message to scan the specific QR code, the timer value from the `TimerState` provider, and the session status or total time spent.

// ignore_for_file: library_private_types_in_public_api
=======
// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:provider/provider.dart'; // Import the provider package
import 'package:unifit/pages/timer_state.dart'; // Import your TimerState class


class QRScannerScreen extends StatefulWidget {
  const QRScannerScreen({super.key});

  @override
  _QRScannerScreenState createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  late QRViewController controller;
  bool isScanned = false;

  String sessionType = ''; // Variable to store the session type (gym or pool)


  @override
  void initState() {
    super.initState();
    // Start the timer when the screen is initialized
    Provider.of<TimerState>(context, listen: false).startTimer();
  }

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {

      if (!isScanned && scanData != null) {
        // Check if the scanned QR code is for gym or pool
        if (scanData.code == 'GYM-START' || scanData.code == 'GYM-END') {
          sessionType = 'Gym';
        } else if (scanData.code == 'POOL-START' ||
            scanData.code == 'POOL-END') {
          sessionType = 'Pool';
        }

        // Handle the scanned QR code based on session type
        if (sessionType.isNotEmpty) {
          isScanned = true;
          final timerState = Provider.of<TimerState>(context, listen: false);
          if (sessionType == 'Gym') {
            timerState.stopTimer();
          } else if (sessionType == 'Pool') {
            timerState.startTimer();
          }
          setState(() {
            // Update UI to display session status or total time spent
          });
        }

      if (!isScanned && scanData != null && scanData.code == '12345') {
        isScanned = true;
        // Stop the timer when the specific QR code is scanned
        Provider.of<TimerState>(context, listen: false).stopTimer();
        // Return the scanned QR code result
        Navigator.pop(context, scanData.code);

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final timerState = Provider.of<TimerState>(context);

    return Scaffold(
      appBar: AppBar(title: Text('QR Scanner')),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: QRView(
              key: qrKey,
              onQRViewCreated: onQRViewCreated,
            ),
          ),
          const Expanded(
            flex: 1,
            child: Center(

              child: Text('Scan the specific QR code for Gym or Pool'),

            ),
          ),
          // Display the timer using the values from TimerState
          Text(
            '${timerState.hours.toString().padLeft(2, '0')}:${timerState.minutes.toString().padLeft(2, '0')}:${timerState.seconds.toString().padLeft(2, '0')}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          // Display session status or total time spent
          Text(
            isScanned ? '$sessionType Session Ended' : 'Session Not Started',
            style: TextStyle(fontSize: 18),
          ),

        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
