import 'package:flutter/material.dart';
import 'package:flutter_everythings/charts_graphs/chats_types/pie_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RadiusChart extends StatefulWidget {
  const RadiusChart({super.key});

  @override
  State<RadiusChart> createState() => _RadiusChartState();
}

class _RadiusChartState extends State<RadiusChart> {
  List<RadiusData> RadiusDataList = [
    RadiusData('Flutter', 50),
    RadiusData('Dart', 30),
    RadiusData('Java', 20),
    RadiusData('Python', 10),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radius Chart'),
      ),
      body:Container(
        // height: 300,
        // margin: EdgeInsets.all(10),
        child: SfCircularChart(
          title: ChartTitle(text: 'Pie Chart of Language'),
          // backgroundColor: Colors.black,
          // centerY: '90',
          legend: Legend(isVisible: true,position: LegendPosition.bottom),
          // palette: [
          //   Colors.red,
          //   Colors.greenAccent,
          //   Colors.purple,
          //   Colors.cyan,
          // ],



          //||||| This is DoughnutSeries Chart |||||
          series: [
            DoughnutSeries<RadiusData, String>(
             // cornerStyle: CornerStyle.bothCurve,
             radius: '90%',
             innerRadius: '40%',
             dataSource: RadiusDataList,
               xValueMapper: (RadiusData data, _) => data.xData,
               yValueMapper: (RadiusData data, _) => data.yData,
               dataLabelSettings: DataLabelSettings(isVisible: true),
           ) ,





            //|||||||||||||||| This is Radius Chart ||
           //  RadialBarSeries<RadiusData, String>(
           //   cornerStyle: CornerStyle.bothCurve,
           //   radius: '90%',
           //   innerRadius: '40%',
           //   trackColor: Colors.grey,
           //   gap: '5%',
           //   dataSource: RadiusDataList,
           //     xValueMapper: (RadiusData data, _) => data.xData,
           //     yValueMapper: (RadiusData data, _) => data.yData,
           //     dataLabelSettings: DataLabelSettings(isVisible: true),
           // )
          ],
        ),
      ),

      );
    
  }
}

class RadiusData{
  final String xData;
  final num yData;

  RadiusData(this.xData, this.yData);
}
