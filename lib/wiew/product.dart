import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/card.dart';
import 'package:casebook/wiew/overview.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Overview()));
            }),
        title: const Text(
          "Ürünler",
          style: Constants.textStyle,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child:const  CustomCard(
                text:
                    "Ürün Adı: Beyaz Kumaş\nAlış Fiyat: 500TL\nSatış Fiyat: 20.000\nAdet: 450",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
