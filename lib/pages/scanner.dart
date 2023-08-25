import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

const bgColor = Color(0xfffafafa);

class QRScanner extends StatelessWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "QR Scanner",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Place the QR code in the area",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Scanning will be started automatically",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            Expanded(
              flex: 4,
              child: MobileScanner(
                onDetect: (barcodes) {},
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "Developed by Baaba devs",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    letterSpacing: 1,
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
