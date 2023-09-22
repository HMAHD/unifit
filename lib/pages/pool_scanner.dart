import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:unifit/pages/countdown_pool_time.dart';

class PoolQRScanner extends StatefulWidget {
  const PoolQRScanner({super.key});

  @override
  State<PoolQRScanner> createState() => _PoolQRScannerState();
}

class _PoolQRScannerState extends State<PoolQRScanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  late QRViewController controller;
  bool qrResult = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 250,
              width: 250,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              qrResult
                  ? 'QR Code Scanned Successfully'
                  : 'Scan a QR code for Pool entry',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        // Check if the QR code is valid (e.g., meet some criteria)
        qrResult = isValidQRCode(scanData.code!);
        if (qrResult) {
          // Navigate to another page if the QR code is valid
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PoolTime()),
          );
        }
      });
    });
  }

  bool isValidQRCode(String qrCode) {
    // Implement your QR code validation logic here
    // Return true if the QR code is valid, otherwise false
    return qrCode.isNotEmpty;
  }
}

class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Another Page'),
      ),
      body: const Center(
        child: Text('This is another page.'),
      ),
    );
  }
}
