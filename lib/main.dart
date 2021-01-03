import 'package:burc_rehberi/horoscop_detail.dart';
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
      debugShowCheckedModeBanner: false,

      //Uygulama ilk burda çalışır ve hata falan varsa ilk burda işlenir

      initialRoute: "/horoscopList",
      routes: {
        "/": (context) => HoroscopList(),
        "/horoscopList": (context) => HoroscopList(),
      },

      onGenerateRoute: (RouteSettings settings) {
        List<String> path = settings.name.split("/");

        if (path[1] == "horoscopDetail") {
          return MaterialPageRoute(
              builder: (context) => HoroscopDetail(int.parse(path[2])));
        }
        return null;
      },
      title: "Burç Rehberi Burç Rehberi Burç Rehberi",
      theme: ThemeData(primarySwatch: Colors.lightBlue),

      //Routes tanımlanınca Home() Tanımlanmaz
      //home: HoroscopList(),
    );
  }
}
