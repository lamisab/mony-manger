import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../constFiles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
            padding:
                const EdgeInsets.only(left: 30, right: 23, top: 90, bottom: 5),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 211, 209, 209).withOpacity(0.5),
                    spreadRadius: 36,
                    blurRadius: 30,
                    offset: const Offset(30, 0)
                    // offset: const Offset(0, 0),
                    ),
              ],
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("نظرة عامة على استهلاكك الإسبوع الحالي (آخر 7 أيام)"),
                SfCartesianChart(
                  // crosshairBehavior:CrosshairBehavior,
                  enableMultiSelection: false,
                  enableAxisAnimation: true,
                  palette: const <Color>[expenseRed, incomeGreen],
                  primaryXAxis: CategoryAxis(),
                  primaryYAxis: NumericAxis(),
                  series: <ChartSeries>[
                    ColumnSeries<SaleData, String>(
                        dataSource: gitInfo(),
                        xValueMapper: (SaleData sales, _) => sales.x,
                        yValueMapper: (SaleData sales, _) => sales.y,
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true)),
                    ColumnSeries<SaleData, String>(
                        dataSource: getSaving(),
                        xValueMapper: (SaleData sales, _) => sales.x,
                        yValueMapper: (SaleData sales, _) => sales.y,
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true))
                  ],
                ),
              ],
            ))
      ]),
    );
  }
}

class SaleData {
  String x;

  int y;
  SaleData(this.x, this.y);
}

dynamic gitInfo() {
  List<SaleData> columnData = <SaleData>[
    SaleData("Jan", Random().nextInt(4000)),
    SaleData("May", Random().nextInt(5000)),
    SaleData("Apr", Random().nextInt(6000)),
    SaleData("Mar", Random().nextInt(7000)),
  ];

  return columnData;
}

dynamic getSaving() {
  List<SaleData> columnData = <SaleData>[
    SaleData("Jan", Random().nextInt(7000)),
    SaleData("May", Random().nextInt(3000)),
    SaleData("Apr", Random().nextInt(2000)),
    SaleData("Mar", Random().nextInt(4000)),
  ];

  return columnData;
}
