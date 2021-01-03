import 'package:burc_rehberi/utils/strings.dart';
import 'package:flutter/material.dart';

import 'models/horoscop.dart';

class HoroscopList extends StatelessWidget {
  static List<Horoscop> allHoroscop;

  @override
  Widget build(BuildContext context) {
    allHoroscop = horoscopDateCreate();
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Rehberi"),
      ),
      body: creatHoroscopList(),
    );
  }

  List<Horoscop> horoscopDateCreate() {
    List<Horoscop> horoscops = [];

    for (int i = 0; i < 12; i++) {
      String smallPic = Strings.HOROSCOP_NAME[i].toLowerCase() +
          "${i + 1}" +
          ".png"; //Koç->koc1.png
      String bigPic = Strings.HOROSCOP_NAME[i].toLowerCase() +
          "_buyuk" "${i + 1}" +
          ".png"; //Koç->koc1.png

      Horoscop addHoroscops = Horoscop(
          Strings.HOROSCOP_NAME[i],
          Strings.HOROSCOP_DATE[i],
          Strings.HOROSCOP_GENERAL_DETAIL[i],
          smallPic,
          bigPic);

      horoscops.add(addHoroscops);
    }

    return horoscops;
  }

  Widget creatHoroscopList() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return listLine(context, index);
      },
      itemCount: allHoroscop.length,
    );
  }

  Widget listLine(BuildContext context, int index) {
    Horoscop listIndex = allHoroscop[index];

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, "/horoscopDetail/$index"),
          //Alternativ
          //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>HoroscopDetail())),
          leading: Image.asset(
            "images/" + listIndex.horoscopSmallPic,
            width: 64,
            height: 64,
          ),
          title: Text(
            listIndex.horoscopName,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.pink.shade500),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              listIndex.horoscopDate,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
