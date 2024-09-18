import 'package:flutter/material.dart';
import 'package:zikirmatik_proje/screens/home-screen.dart';

void main() {
  runApp(const ZikirmatikProject());
}

class ZikirmatikProject extends StatefulWidget {
  const ZikirmatikProject({super.key});

  @override
  State<ZikirmatikProject> createState() => _ZikirmatikProjectState();
  
}

class _ZikirmatikProjectState extends State<ZikirmatikProject> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
