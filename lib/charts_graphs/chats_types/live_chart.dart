import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LiveChart extends StatefulWidget {
  const LiveChart({super.key});

  @override
  State<LiveChart> createState() => _LiveChartState();
}

class _LiveChartState extends State<LiveChart> {

  late List<LiveData> liveDataList;
  late ChartSeriesController _chartSeriesController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    liveDataList =getChartData();

    Timer.periodic(const Duration(seconds: 1), updateData);
  }

  List<LiveData> getChartData(){
    return <LiveData>[
      LiveData(0, 35),
      LiveData(1, 28),
      LiveData(2, 34),
      LiveData(3, 32),
      LiveData(4, 40)
    ];

  }

 int time =0;
  updateData(Timer timer){
    liveDataList.add(LiveData(time++, (math.Random().nextInt(100))));
    liveDataList.removeAt(0);
    _chartSeriesController.updateDataSource(
        addedDataIndex: liveDataList.length - 1, removedDataIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Live Chart"),
        centerTitle: true,
      ),
      body: Container(
        height: 300,
        child: SfCartesianChart(
          legend: Legend(isVisible: true),
          series: [
            LineSeries<LiveData,int>(
              onRendererCreated: (ChartSeriesController controller){
                _chartSeriesController = controller;
              },
              dataSource: liveDataList,
                xValueMapper: (LiveData data,_)=>data.time,
                yValueMapper: (LiveData data,_)=>data.speed
            )
          ],

          primaryXAxis: NumericAxis(
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            title: AxisTitle(text: "Time/s"),
            interval: 1,
            labelFormat: "{value}s",
          ),
          primaryYAxis: NumericAxis(
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            title: AxisTitle(text: "Speed"),
            interval: 1,
            labelFormat: "{value}s",
          ),

        ),
      ),
    );
  }
}

class LiveData{
  final int time;
  final num speed;

  LiveData(this.time, this.speed);
}