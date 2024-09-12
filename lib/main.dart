import 'package:flutter/material.dart';
import 'package:myapp/views/homescreen.dart';

void main() {
  runApp(const cointicker());
}

class cointicker extends StatelessWidget {
  const cointicker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
