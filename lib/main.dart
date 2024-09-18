import 'package:flutter/material.dart';
import 'package:products_flutter_project/screens/home_screen.dart';

void main() {
  runApp(const PRODUCTS());
}

class PRODUCTS extends StatelessWidget {
  const PRODUCTS({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
