import 'package:flutter/material.dart';
import 'package:flyapp/qr_scanner.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      )),
      home: QRScanner(),
      debugShowCheckedModeBanner: false,
      title: 'AVIAIT PAX',
    );
  }
}
