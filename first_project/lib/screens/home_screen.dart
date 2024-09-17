import 'package:first_project/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Application',
            style:
                TextStyle(fontWeight: FontWeight.w700, color: Colors.blueGrey),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 25, 29, 2),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 190,
                height: 90,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondScreen()));
                    },
                    child: Text(
                      'Ikinci sayfaya kecit',
                      style: TextStyle(
                        color: Colors.amber[700],
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    )),
              )
            ],
          ),
        ));
  }
}
