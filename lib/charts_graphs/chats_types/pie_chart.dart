import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatefulWidget {
  const PieChart({super.key});

  @override
  State<PieChart> createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  List<PieData> pieDataList = [
    PieData('Flutter', 50),
    PieData('Dart', 30),
    PieData('Java', 20),
    PieData('Python', 10),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pie Chart '),
      ),
      body:Container(
        height: 300,
        // margin: EdgeInsets.all(10),
        child: SfCircularChart(
          title: ChartTitle(text: 'Pie Chart of Language'),
          backgroundColor: Colors.black,
          // centerY: '90',
          legend: Legend(isVisible: true,position: LegendPosition.right),
          palette: [
            Colors.red,
            Colors.greenAccent,
            Colors.purple,
            Colors.cyan,
          ],
          series: [
            PieSeries<PieData, String>(
              // enableTooltip: true,
              dataLabelSettings: DataLabelSettings(
                isVisible: true,
                textStyle: const TextStyle(fontSize: 10),
              ),
              explode: true,
             // explodeAll: true,
              explodeIndex: 1,
             // radius: '100',
             dataSource: pieDataList,
              xValueMapper: (PieData data, _) => data.xData,
              yValueMapper: (PieData data, _) => data.yData,

            )
          ],
        ),
      ),

    );
  }
}

class PieData{
  final String xData;
  final num yData;

  PieData(this.xData, this.yData);
}
