import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }

  void _resetCounter() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 53, 62),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ILKINLERE OZEL ZIKIRMATIK",
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.black)),
        backgroundColor: Colors.blueGrey[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Momin Qardaslar ucun APPLICATION',
                style: TextStyle(
                  color: Colors.red,
                  backgroundColor: Colors.black,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                _image(),
                _positionedNumber(),
                _positionedBigButton(),
                _positionedLittleButton()
              ],
            ),
          ],
        ),
      ),
    );
  }

  Positioned _positionedLittleButton() {
    return Positioned(
      top: 156,
      right: 126,
      child: GestureDetector(
        onTap: () => _resetCounter(),
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        ),
      ),
    );
  }

  Positioned _positionedBigButton() {
    return Positioned(
      top: 185,
      child: GestureDetector(
        onTap: () => _incrementCounter(),
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        ),
      ),
    );
  }

  Positioned _positionedNumber() {
    return Positioned(
      top: 30,
      right: 120,
      child: Text(
        _counter.toString(),
        style: const TextStyle(
          fontFamily: 'Digital7',
          fontSize: 70,
          color: Colors.white,
        ),
      ),
    );
  }

  SizedBox _image() {
    return SizedBox(
        width: 400, height: 300, child: Image.asset('assets/images/image.png'));
  }
}
