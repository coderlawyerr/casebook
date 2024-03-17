import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Mapp"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/prof.png"),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
                child:
                    Text("        BETÜL ŞENSOY   \nbetulsensoy00@gmail.com")),
            ListTile(
              title: Text("Ürün Ekle"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Ürünler"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Yapılan İşlemler"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Tedarikçi Müşteri Ekle"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Tedarikçi Müşteri Sil"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Satış"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Rapor"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Çıkış"),
              onTap: () {},
            ),
          ],
        ),
      ),
    
   
    );
  }
}
