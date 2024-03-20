import 'package:casebook/wiew/add_product.dart';
import 'package:casebook/wiew/forgot_password.dart';
import 'package:casebook/wiew/overview.dart';
import 'package:casebook/wiew/product.dart';
import 'package:casebook/wiew/report.dart';
import 'package:casebook/wiew/sales.dart';
import 'package:casebook/wiew/splash.dart';
import 'package:casebook/wiew/supplier_and_customer_add.dart';
import 'package:casebook/wiew/things_todo.dart';
import 'package:casebook/wiew/welcome.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(145, 7, 3, 48)),
      title: 'Flutter Demo',
      home: Splash(),
    );
  }
}
