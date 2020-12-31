import 'package:burc_rehberi/horoscop_list.dart';
import 'package:flutter/material.dart';

//void main()=>MyApp();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ilk kök widget
    return MaterialApp(
      title: "Burç Rehberi Burç Rehberi Burç Rehberi",
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: HoroscopList(),
    );
  }
}
