import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/card.dart';
import 'package:casebook/wiew/overview.dart';
import 'package:flutter/material.dart';

class supplier_and_customer extends StatefulWidget {
  const supplier_and_customer({super.key});

  @override
  State<supplier_and_customer> createState() => _ProductState();
}

class _ProductState extends State<supplier_and_customer> {
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
          "TEDARİKÇİ VE MÜŞTERİ",
          style: Constants.textStyle,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: const CustomCard(
                text: "Şahıs:Müşteri\nTel:115665\nAdres:sabahat sok.İzmir apt",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
