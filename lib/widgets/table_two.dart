import 'package:flutter/material.dart';

class MyTabletwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Tablonun arka plan rengini beyaz yapar
      child: Table(
        border: TableBorder.all(),
        children: const [
          TableRow(
            children: [
              TableCell(
                  child: Text('Ürün', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('Satış Fiyatı',
                      style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('Alış Fiyatı',
                      style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('Ürün Adeti',
                      style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('Satış Tutarı',
                      style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('Kar Zarar Durumu',
                      style: TextStyle(color: Colors.black))),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                  child:
                      Text('Beyaz k', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('22000', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('2565', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('5126', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('621321', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('Zarar', style: TextStyle(color: Colors.black))),
            ],
          ),
        ],
      ),
    );
  }
}
