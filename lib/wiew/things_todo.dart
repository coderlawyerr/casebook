import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/container.dart';
import 'package:casebook/widgets/small_button.dart';
import 'package:casebook/widgets/table.dart';
import 'package:casebook/wiew/overview.dart';
import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Yapılan İşlemler",
          style: Constants.textStyle,
        ),
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Overview()));
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallButton(
                  text: "GÜNLÜK",
                ),
                SmallButton(text: "HAFTALIK"),
                SmallButton(text: "AYLIK"),
                SmallButton(text: "Yıllık"),
              ],
            ),
            Constants.sizedbox,
            CustomContainer(),
            Constants.sizedbox,
            MyTable(),
          ],
        ),
      ),
    );
  }
}
