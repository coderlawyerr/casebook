/*
Bu sayfa hosgeldınız kısmı yanı splash ekranından sonra gelen  custumtextwıdget ve customtextfield ler tanımlayıp burdan cagırdım 
navıgator kısmını baska sayfaya yonlendırm yapıyor//sayfanın amacıı
*/
import 'package:casebook/wiew/forgot_password.dart';
import 'package:casebook/wiew/overview.dart';
import 'package:casebook/wiew/reg%C4%B1ster.dart';
import 'package:flutter/material.dart';
import 'package:casebook/widgets/button.dart';
import 'package:casebook/widgets/textwidget.dart';
import 'package:casebook/widgets/textfield.dart';
import 'package:casebook/const/const.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "HOŞGELDİNİZ",
                  style: Constants.textStyle,
                ),
              ),
              const SizedBox(height: 70),
              const CustomTextWidget(
                text: "E-Posta",
              ),
              const CustomTextField(),
              Constants.sizedbox,
              //////////customt
              const CustomTextWidget(
                text: "Şifre",
              ),
              const CustomTextField(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPassword()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Şifremi Unuttum",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              //////////
              const Center(
                  child: CustomButton(
                text: "GİRİŞ YAP",
                page: Overview(),
              )),
              SizedBox(
                height: 20,
              ),
              const Row(
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
              SizedBox(
                height: 20,
              ),
              const Center(
                child: CustomButton(
                  text: "KAYDOL",
                  page: Register(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
