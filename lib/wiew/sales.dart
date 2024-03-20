import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/button.dart';
import 'package:casebook/widgets/dropdown.dart';
import 'package:casebook/widgets/textfieldtwo.dart';
import 'package:casebook/widgets/textwidget.dart';
import 'package:flutter/material.dart';
// DropdownMenuExample dosyanızın doğru yolunu ekleyin
import 'overview.dart'; // Overview dosyanızın doğru yolunu ekleyin

class Sales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Overview()),
            );
          },
        ),
        title: Text(
          "Satış",
          style: Constants.textStyle,
        ), // Sales sayfasının başlığını ekleyin
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  CustomTextWidget(text: "Ürün Seç"),
                  DropdownMenuExample(),
                  Constants.sizedbox,
                  //////////////////////////////
                  CustomTextWidget(text: "Müşteri Tedarikçi Seç"),
                  DropdownMenuExample(),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      CustomTextWidget(text: "Satış Fiyatı"),
                      CustomTextFieldTwo(),
                    ],
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  child: Column(
                    children: [
                      CustomTextWidget(text: "Alış Fiyatı"),
                      CustomTextFieldTwo(),
                      SizedBox(
                        width: 3,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  child: Column(
                    children: [
                      CustomTextWidget(text: "Ürün Adedi"),
                      CustomTextFieldTwo(),
                    ],
                  ),
                ),
              ],
            ),
            Constants.sizedbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      CustomTextWidget(text: "Toplam Tutar"),
                      CustomTextFieldTwo(),
                    ],
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  child: Column(
                    children: [
                      CustomTextWidget(text: "Satış Tarihi"),
                      CustomTextFieldTwo(),
                      SizedBox(
                        width: 3,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  child: Column(
                    children: [
                      CustomTextWidget(text: "Satış Saati"),
                      CustomTextFieldTwo(),
                    ],
                  ),
                ),
              ],
            ),
            Constants.sizedbox,
            CustomButton(text: "DÜZENLE", page: Sales()),
            Constants.sizedbox,
            CustomButton(text: "KAYDET", page: Sales()),
          ],
        ),
      ),
    );
  }
}
