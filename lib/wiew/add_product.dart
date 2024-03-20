import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/button.dart';
import 'package:casebook/widgets/textfield.dart';
import 'package:casebook/widgets/textwidget.dart';
import 'package:casebook/wiew/overview.dart';
import 'package:casebook/wiew/product.dart';
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
          "Ürün Ekle",
          style: Constants.textStyle,
        ),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
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
                Center(
                  child: CustomButton(
                    text: "ONAYLA",
                    page: Product(),
                  ),
                ),
                ////////////
              ],
            ),
          ),
        ),
      ),
    );
  }
}
