import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';

const bgColor = Color(0xfffafafa);

class QRScanner extends StatelessWidget {
  QRScanner({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Наведите на штрихкод"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("сканирование начнется автоматически")
                ],
              ),
            )),
            Expanded(
              flex: 4,
              child: MobileScanner(onDetect: (capture) {
                final List<Barcode> barcodes = capture.barcodes;
                final Uint8List? image = capture.image;
                for (final barcode in barcodes) {
                  debugPrint('Barcode found! ${barcode.rawValue}');
                }
              }),
            ),
            Expanded(
                flex: 6,
                child: Container(
                    alignment: Alignment.center,
                    child: QrImage(
                      data: "",
                      size: 150,
                      version: QrVersions.auto,
                    ))),
          ],
        ),
      ),
    );
  }
}
