/*
burası sıfremı unuttum kısmı 


*/
import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/squre.dart';
import 'package:casebook/wiew/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            }),
        title: const Text(
          "Parolanızı Mı  Unuttunuz",
          style: Constants.textStyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 125,
            ),
            Center(child: CustomSquare()),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "E-postanıza kod gönderildi",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            const Text(
              "Kodun Süresi Doluyor 5 sn",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                child: Center(
                  child: Text(
                    "DOĞRULAMA KODU TEKRAR GÖNDER",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                width: 254,
                height: 34,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
