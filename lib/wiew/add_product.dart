import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/button.dart';
import 'package:casebook/widgets/textfield.dart';
import 'package:casebook/widgets/textwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Ürün Ekle"),
      ),
      body:const Center(child: Column(
        children: [
            CustomTextWidget(text: "Ürün Adı"),
            CustomTextField(),
            Constants.sizedbox,
            ///////////////
             CustomTextWidget(text: "Ürün Alış Fiyatı"),
            CustomTextField(),
            Constants.sizedbox,
            ///////////////
            CustomTextWidget(text: "Ürün Satış Fiyatı"),
            CustomTextField(),
            Constants.sizedbox,
            ///////////////
               CustomTextWidget(text: "Adet"),
            CustomTextField(),
            Constants.sizedbox,
            ////////////
            CustomButton(text: "ONAYLA"),
        ],
      ))
    );
  }
}