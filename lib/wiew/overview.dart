import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/listtile.dart';
import 'package:casebook/widgets/pie_chart.dart';
import 'package:casebook/widgets/table.dart';
import 'package:casebook/wiew/add_product.dart';
import 'package:casebook/wiew/product.dart';
import 'package:casebook/wiew/report.dart';
import 'package:casebook/wiew/sales.dart';
import 'package:casebook/wiew/supplier_and_customer.dart';
import 'package:casebook/wiew/supplier_and_customer_add.dart';
import 'package:casebook/wiew/things_todo.dart';
import 'package:casebook/wiew/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Overview extends StatefulWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
            kToolbarHeight + 250), // Add 20 pixels of extra space
        child: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "Genel Bakış Sayfası",
            style: Constants.textStyle,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage(
                "assets/prof.png",
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("BETÜL ŞENSOY"),
                Text("betulsensoy00@gmail.com"),
                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
            CustomListTile(
              title: "Ürün Ekle",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddProduct()),
                );
              },
            ),
            CustomListTile(
              title: "Ürünler",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Product()),
                );
              },
            ),
            CustomListTile(
              title: "Yapılan İşlemler",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Todo()),
                );
              },
            ),
            CustomListTile(
              title: "Tedarikçi Müşteri Ekle",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => supplier_and_customeradd()),
                );
              },
            ),
            CustomListTile(
              title: "Tedarikçi Müşteri Sil",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => supplier_and_customer()),
                );
              },
            ),
            CustomListTile(
              title: "Satış",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sales()),
                );
              },
            ),
            CustomListTile(
              title: "Rapor",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Report()),
                );
              },
            ),
            CustomListTile(
              title: "Çıkış",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: MyPieChart(),
            ),
          ),
        ],
      ),
    );
  }
}
