import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/button.dart';
import 'package:casebook/widgets/textfield.dart';
import 'package:casebook/widgets/textwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Kayıt Ol"),
      ),
      body: const Center(
        child: Column(
          children: [
            CustomTextWidget(text: " Ad-Soyad"),
            CustomTextField(),
            Constants.sizedbox,
            //////////////
            CustomTextWidget(text: "Telefon"),
            CustomTextField(),
            Constants.sizedbox,
            /////////////
            CustomTextWidget(text: "Şifre"),
            CustomTextField(),
            Constants.sizedbox,
            //////////////
            
            CustomButton(text: "KAYDOL"),
         
          ],
        ),
      ),
    );
  }
}
