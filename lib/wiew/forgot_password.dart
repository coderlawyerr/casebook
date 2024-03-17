import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/squre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text("Parolanızı Mı  Unuttunuz"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 125,
            ),
            Center(child: CustomSquare()),
            SizedBox(
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
            SizedBox(
              height: 50,
            ),
            Container(
              child: Center(
                child: Text(
                  "DOĞRULAMA KODU TEKRAR GÖNDER",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              width: 254,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
