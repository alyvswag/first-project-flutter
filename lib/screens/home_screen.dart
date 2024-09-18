import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:products_flutter_project/models/common_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CommonModel? _products;

  dynamic _loadData() async {
    final dataString = await rootBundle.loadString('assets/files/data.json');
    //loadString geriye Future tipinde melumat qaytarir ve deyirki direkt bu melumatlari vere bilmiyecem seni gozledecem
    //oncu await yaz,metod basinada async yaz
    final dataJson = jsonDecode(dataString);
    _products = CommonModel.fromJson(dataJson);
    setState(() {});
  }

  @override
  void initState() {
    //bu metod proqram ise dusdukde ilk calistirilan  metoddu ilk setire ne yazsan o calisdirilacaq
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [Text(_products)],
        ),
      ),
    );
  }
}
