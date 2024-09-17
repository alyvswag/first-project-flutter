import 'package:first_project/screens/list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Montserrat"),
      home: const ListScreen(),
    );
  }

  Container _container2() {
    return Container(
      padding: const EdgeInsets.only(top: 50, right: 50),
      // margin: const EdgeInsets.all(20),
      // width: 150,
      // height: 100,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),

        // boxShadow:  [
        //   _boxShadow(),
        // ]
        // gradient: _gradient()
      ),
      alignment: Alignment.center,
      child: const Text(
        'Salam dunya',
        style: TextStyle(color: Colors.red),
      ),
    );
  }

  SizedBox _sizedBoxAndCard() {
    return const SizedBox(
      width: 150,
      height: 150,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
          elevation: 3,
          child: Align(child: Text('Salam')),
        ),
      ),
    );
  }

  BoxShadow _boxShadow() {
    return const BoxShadow(
        color: Color.fromARGB(60, 29, 26, 26),
        spreadRadius: 1,
        blurRadius: 5,
        offset: Offset(0, 2));
  }

  LinearGradient _gradient() {
    return const LinearGradient(
        colors: [Colors.black, Colors.red],
        begin: Alignment.topCenter,
        end: Alignment.bottomRight);
  }

  IconButton _iconButton() {
    return IconButton(
      onPressed: () => print('bana tikladin'),
      icon: _icon1(),
      color: Colors.amber,
    );
  }

  Icon _icon1() {
    return const Icon(
      Icons.arrow_circle_right_sharp,
      color: Colors.red,
      size: 50,
    );
  }

  TextButton _button2() {
    return TextButton(
        onPressed: () => print('tikladi2'), child: Text('Bana tikla2'));
  }

  ElevatedButton _button1() {
    return ElevatedButton(
        onPressed: () => print('tikladi'), child: Text("Bana tikla"));
  }

  Image _image2() {
    return Image.network(
      'https://images.wallpaperscraft.com/image/single/road_marking_evening_120298_300x255.jpg',
      width: 200,
      height: 200,
    );
  }

  SizedBox _sizedBox1() {
    return const SizedBox(
      height: 20,
    );
  }

  Image _image1() {
    return Image.network(
      'https://images.wallpaperscraft.com/image/single/boat_mountains_lake_135258_300x255.jpg',
      width: 200,
      height: 200,
    );
  }

  Image _imageAsset() {
    return Image.asset(
      'assets/images/image.png',
    );
  }

  Text _text1() {
    return const Text('Talib Aliyev',
        style: TextStyle(
            fontWeight: FontWeight.w800,
            color: const Color.fromARGB(255, 3, 113, 168)));
  }
}
