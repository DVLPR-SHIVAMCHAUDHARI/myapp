import 'package:flutter/material.dart';
import 'package:myapp/controllers/coinsController.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    Coinscontroller().fetchCoinData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
