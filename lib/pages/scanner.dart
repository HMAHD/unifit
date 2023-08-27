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

  @override
  void initState() {
    super.initState();
    // Start the timer when the screen is initialized
    Provider.of<TimerState>(context, listen: false).startTimer();
  }

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
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
              child: Text('Scan the specific QR code'),
            ),
          ),
          // Display the timer using the values from TimerState
          Text(
            '${timerState.hours.toString().padLeft(2, '0')}:${timerState.minutes.toString().padLeft(2, '0')}:${timerState.seconds.toString().padLeft(2, '0')}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
