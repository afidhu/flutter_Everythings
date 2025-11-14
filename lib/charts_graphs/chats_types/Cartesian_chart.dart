import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChart extends StatefulWidget {
  const CartesianChart({super.key});

  @override
  State<CartesianChart> createState() => _CartesianChartState();
}

class _CartesianChartState extends State<CartesianChart> {

  List<SaleData> salesList=[
    SaleData(2010, 100.0, Colors.red),
    SaleData(2011, 120.0, Colors.green),
    SaleData(2012, 140.0, Colors.blue),
    SaleData(2013, 160.0, Colors.yellow),
    SaleData(2014, 180.0, Colors.orange),
    SaleData(2015, 200.0, Colors.pink),
    SaleData(2016, 170.0, Colors.purple),
    SaleData(2017, 130.0, Colors.brown),
    SaleData(2018, 110.0, Colors.grey),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CartesianChart'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 500,
        child: SfCartesianChart(
          legend: Legend(isVisible: true),
          title: ChartTitle(text: 'Cartesian chart'),
          series:[

            //|||||||||||||||||||||||||||This is Waterfall Series charts
            // WaterfallSeries<SaleData, int>(
            //   pointColorMapper: (SaleData sale,_)=>sale.color,
            //   dashArray:<double> [10,5],
            //   enableTooltip: true,
            //   legendItemText: 'Chart',
            //   dataSource: salesList,
            //   xValueMapper: (SaleData sale,_)=>sale.year,
            //   yValueMapper: (SaleData sale,_)=>sale.sales,
            //   // colorMapper: (SaleData sales,_)=>sales.color
            // )  ,


            //||||||||||||||||||||||||||This is Column Series charts
            ColumnSeries<SaleData, int>(
              pointColorMapper: (SaleData sale,_)=>sale.color,
              dashArray:<double> [10,5],
              enableTooltip: true,
              legendItemText: 'Chart',
              dataSource: salesList,
              xValueMapper: (SaleData sale,_)=>sale.year,
              yValueMapper: (SaleData sale,_)=>sale.sales,
              // colorMapper: (SaleData sales,_)=>sales.color
            )  ,

            //||||||||||||||||||||||||||This is Area Series charts
            // AreaSeries<SaleData, int>(
            //   pointColorMapper: (SaleData sale,_)=>sale.color,
            //   dashArray:<double> [10,5],
            //   enableTooltip: true,
            //   legendItemText: 'Chart',
            //   dataSource: salesList,
            //   xValueMapper: (SaleData sale,_)=>sale.year,
            //   yValueMapper: (SaleData sale,_)=>sale.sales,
            //   // colorMapper: (SaleData sales,_)=>sales.color
            // )  ,

            //||||||||||||||||||||||||||This is Spline Series charts
            // SplineSeries<SaleData, int>(
            //   pointColorMapper: (SaleData sale,_)=>sale.color,
            //   dashArray:<double> [10,5],
            //   enableTooltip: true,
            //   legendItemText: 'Chart',
            //   dataSource: salesList,
            //   xValueMapper: (SaleData sale,_)=>sale.year,
            //   yValueMapper: (SaleData sale,_)=>sale.sales,
            //   // colorMapper: (SaleData sales,_)=>sales.color
            // )  ,

            //||||||||||||||||||||||||||THis is StackedColumn Series charts
            // StackedColumnSeries<SaleData, int>(
            //   pointColorMapper: (SaleData sale,_)=>sale.color,
            //   dashArray:<double> [10,5],
            //   enableTooltip: true,
            //   legendItemText: 'Chart',
            //   dataSource: salesList,
            //   xValueMapper: (SaleData sale,_)=>sale.year,
            //   yValueMapper: (SaleData sale,_)=>sale.sales,
            //   // colorMapper: (SaleData sales,_)=>sales.color
            // )  ,

            //|||||||||||||||||||||||||||||THis is Bar Series charts

            // BarSeries<SaleData, int>(
            //   pointColorMapper: (SaleData sale,_)=>sale.color,
            // dashArray:<double> [10,5],
            //   enableTooltip: true,
            //   legendItemText: 'Chart',
            //   dataSource: salesList,
            //     xValueMapper: (SaleData sale,_)=>sale.year,
            //     yValueMapper: (SaleData sale,_)=>sale.sales,
            //     // colorMapper: (SaleData sales,_)=>sales.color
            // )  ,

            //||||||||||||||||||||||||||||||THis is Line Series charts
            //
            // LineSeries<SaleData, int>(
            //   pointColorMapper: (SaleData sale,_)=>sale.color,
            // dashArray:<double> [10,5],
            //   enableTooltip: true,
            //   legendItemText: 'Chart',
            //   dataSource: salesList,
            //     xValueMapper: (SaleData sale,_)=>sale.year,
            //     yValueMapper: (SaleData sale,_)=>sale.sales,
            //     // colorMapper: (SaleData sales,_)=>sales.color
            // )
          ],
        ),
      ),
      backgroundColor: Colors.black12,
    );
  }
}

class SaleData{
  final int year;
  final  double sales;
  final Color color;

  SaleData(this.year, this.sales, this.color);

}