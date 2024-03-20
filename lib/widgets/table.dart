import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
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
                  child: Text('Tarih', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('Ürün', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('Gider', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('Gelir', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('Saat', style: TextStyle(color: Colors.black))),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                  child:
                      Text('1.5.2024', style: TextStyle(color: Colors.black))),
              TableCell(
                  child:
                      Text('Beyaz k', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('2500', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('2500', style: TextStyle(color: Colors.black))),
              TableCell(
                  child: Text('13:20', style: TextStyle(color: Colors.black))),
            ],
          ),
        ],
      ),
    );
  }
}
