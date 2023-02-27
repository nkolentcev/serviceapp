import 'package:appfly/views/gogo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "stag-0",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GoGo(),
    );
  }
}
