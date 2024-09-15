import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Montserrat"),
      home: Scaffold(
          backgroundColor: Colors.black26,
          appBar: AppBar(
            title: Text(
              'salam',
              style: TextStyle(
                  fontWeight: FontWeight.w700, color: Colors.blueGrey),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 164, 183, 58),
          ),
          body: Image.asset(
            'assets/images/image.png',
            width: 800,
            height: 300,
            fit: BoxFit.contain,
          )),
    );
  }
}
