import 'package:casebook/const/const.dart';
import 'package:casebook/widgets/table_two.dart';
import 'package:casebook/wiew/overview.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
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
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Overview()),
            );
          },
        ),
        title:const Text(
          "RAPOR",
          style: Constants.textStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:const EdgeInsets.symmetric(vertical: 20),
                padding:const EdgeInsets.all(20),
                width: 350,
                decoration:const BoxDecoration(
                  color: Constants.mycontainer,
                ),
                child: Column(
                  children: [
                const    Text(
                      "TARİH : 13.04:2024\nSAAT : 13:14",
                      style: TextStyle(color: Colors.black),
                    ),
                 const   SizedBox(height: 20),
                    MyTabletwo(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
