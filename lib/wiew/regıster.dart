/*
bu sayfa kayıt ol sayfası  textfıeldlerı  ve textwıdegtlerı customwıdget olarak tanımladım

*/
import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/button.dart';
import 'package:casebook/widgets/textfield.dart';
import 'package:casebook/widgets/textwidget.dart';
import 'package:casebook/wiew/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon:const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            }),
        title: const Text(
          "Kayıt Ol",
          style: Constants.textStyle,
        ),
      ),
      body: Padding(
        padding:const EdgeInsets.all(15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const CustomTextWidget(text: " Ad-Soyad"),
             const CustomTextField(),
              Constants.sizedbox,
              //////////////
           const   CustomTextWidget(text: "Telefon"),
             const CustomTextField(),
              Constants.sizedbox,
              /////////////
             const CustomTextWidget(text: "Şifre"),
             const CustomTextField(),
              Constants.sizedbox,
              //////////////
           const   SizedBox(
                height: 100,
              ),
              Center(
                child: CustomButton(
                  text: "KAYDOL",
                  page: LoginPage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
