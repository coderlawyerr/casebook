import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyPieChart extends StatefulWidget {
  @override
  State<MyPieChart> createState() => _MyPieChartState();
}

class _MyPieChartState extends State<MyPieChart> {
  Map<String, double> dataMap = {
    "GELİR": 32,
    "GİDER": 28,
    "Borç": 16,
    "Ana Para": 24,
  };
  List<Color> colorList = [
    const Color.fromARGB(255, 127, 96, 3),
    Color.fromARGB(255, 4, 46, 80),
    Colors.black,
    Colors.grey
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PieChart(
            dataMap: dataMap,
            colorList: colorList,
            chartRadius: MediaQuery.of(context).size.width / 2.1,
            legendOptions: LegendOptions(
              legendPosition: LegendPosition.right,
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValuesInPercentage: false,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
