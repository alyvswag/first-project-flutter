import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _words = [
      "a",
      "b1",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e2",
      "a",
      "b",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d4",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e",
      "a",
      "b",
      "c",
      "d",
      "e9",
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'List Screen',
            style: TextStyle(
                color: Colors.amber[500], fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 15, 45, 66),
        ),
        body: _listViewSeparated(_words));
  }

  ListView _listViewSeparated(List<String> words) {
    return ListView.separated(
      itemCount: words.length,
      itemBuilder: (context, index) => ListTile(
        title: Text("indexi = $index"),
        subtitle: Text("value = ${words[index]}"),
        trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: () => print("tiklandi"),
        tileColor: Colors.amber[50],
      ),
      separatorBuilder: (context, index) => const Divider(
        color: Colors.black,
        endIndent: 80,
        thickness: 0.1,
        height: 0.1,
      ),
    );
  }

  ListView _listViewBuilder(List<String> words) {
    return ListView.builder(
      itemCount: words.length,
      itemBuilder: (context, index) => ListTile(
        title: Text("indexi = $index"),
        subtitle: Text("value = ${words[index]}"),
        trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: () => print("tiklandi"),
        tileColor: Colors.amber[50],
      ),
    );
  }

  List<Widget> _listGenerate(List<String> words) {
    return List.generate(
      words.length,
      (index) => Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          words[index],
          style: TextStyle(
            color: Colors.amber[500],
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w900,
            fontSize: 25,
          ),
        ),
      ),
    );
  }

  Iterable<Container> _mapList(List<String> words) {
    return words.map(
      (e) => Container(
        width: 1000,
        height: 100,
        color: Colors.blue,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          e,
          style: TextStyle(
            color: Colors.amber[500],
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w900,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
