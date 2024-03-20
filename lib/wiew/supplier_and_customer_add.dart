import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/button.dart';
import 'package:casebook/widgets/dropdown.dart';
import 'package:casebook/widgets/textfield.dart';
import 'package:casebook/widgets/textwidget.dart';
import 'package:casebook/wiew/overview.dart';
import 'package:casebook/wiew/supplier_and_customer.dart';
import 'package:flutter/material.dart';

class supplier_and_customeradd extends StatefulWidget {
  const supplier_and_customeradd({super.key});

  @override
  State<supplier_and_customeradd> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<supplier_and_customeradd> {
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
          " TEDARİKÇİ VE MÜŞTERİ EKLE ",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextWidget(
                text: "Seç",
              ),
              DropdownMenuExample(),
              Constants.sizedbox,
              /////////////
              const CustomTextWidget(
                text: "Telefon",
              ),
              const CustomTextField(),
              Constants.sizedbox,
              ///////////
              const CustomTextWidget(
                text: "Adres",
              ),
              const CustomTextField(),
              Constants.sizedbox,

              const Center(
                child: CustomButton(
                  text: "ONAYLA",
                  page: supplier_and_customer(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
