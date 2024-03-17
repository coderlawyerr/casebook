import 'package:casebook/wiew/overview.dart';
import 'package:casebook/wiew/reg%C4%B1ster.dart';
import 'package:flutter/material.dart';
import 'package:casebook/widgets/button.dart';
import 'package:casebook/widgets/textwidget.dart';
import 'package:casebook/widgets/textfield.dart';
import 'package:casebook/const/const.dart';
// `HomePage` dosyanızın yolunu doğru olarak belirtin.

class LoginPage extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFF1E1E1E),
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "HOŞGELDİNİZ",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20), // Gerekirse ayarlayın
            CustomTextWidget(
              text: "E-Posta",
            ),
            CustomTextField(),
            Constants.sizedbox,
            //////////
            CustomTextWidget(
              text: "Şifre",
            ),
            CustomTextField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Şifremi Unuttum",
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            //////////
            Center(
                child: CustomButton(
              text: "GİRİŞ YAP",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              },
            )),
            Constants.sizedbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    height: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "veya",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    height: 10,
                  ),
                ),
              ],
            ),
            Constants.sizedbox,
            Center(
              child: CustomButton(
                text: "KAYDOL",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Overview()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
