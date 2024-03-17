import 'package:casebook/widgets/card.dart';
import 'package:flutter/cupertino.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        CustomCard(text: "Ürün Adı"),
      ],
    ));
  }
}