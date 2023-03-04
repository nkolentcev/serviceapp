import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScanner extends StatefulWidget {
  const QRScanner({super.key});

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner>
    with SingleTickerProviderStateMixin {
  BarcodeCapture? capture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                    child: MobileScanner(
                      fit: BoxFit.fitWidth,
                      errorBuilder: (context, error, child) {
                        return Container();
                      },
                      onDetect: (capture) {
                        setState(() {
                          this.capture = capture;
                        });
                      },
                    ),
                  )),
              Expanded(
                  flex: 6,
                  child: Container(
                    child: Text(
                        capture?.barcodes.first.rawValue ?? 'Scan something!'),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                  )),
            ],
          ),
        );
      }),
    );
  }
}
