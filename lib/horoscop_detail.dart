import 'package:burc_rehberi/horoscop_list.dart';
import 'package:flutter/material.dart';

import 'models/horoscop.dart';

class HoroscopDetail extends StatelessWidget {
  Horoscop clickIndex;

  @override
  Widget build(BuildContext context) {
    clickIndex = HoroscopList.allHoroscop[pageIndex];
    return Scaffold(
        primary: true,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 250,
              pinned: true,
              //primary: true,
              backgroundColor: Colors.pink,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "images/" + clickIndex.horoscopBigPic,
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                title: Text(clickIndex.horoscopName + "   Burç'un Özelikleri"),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: SingleChildScrollView(
                  child: Text(
                    clickIndex.horoscopDetail,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  //Counstructor
  int pageIndex;

  HoroscopDetail(this.pageIndex);
}
