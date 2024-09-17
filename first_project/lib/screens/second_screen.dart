import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ikinci sehife',
          style: TextStyle(color: Colors.red[300], fontWeight: FontWeight.w800),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.tealAccent[400],
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
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Evelki sehifeye kecit',
                    style: TextStyle(
                      color: Colors.amber[700],
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
