import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:fluttertask/components/bar%20graph/bar_data.dart';
import 'package:fluttertask/theme/app_pallete.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary;

  const MyBarGraph({super.key, required this.weeklySummary});


  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(sunAmount: weeklySummary[0],
        monAmount: weeklySummary[1],
        tueAmount: weeklySummary[2],
        wedAmount: weeklySummary[3],
        thuAmount: weeklySummary[4],
        friAmount: weeklySummary[5],
        satAmount: weeklySummary[6]
    );

    myBarData.initializeBarData();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BarChart(
          BarChartData(


            gridData: FlGridData(show: false),
        maxY: 100,
            minY: 0,
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(
              show: true,
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false)
              ),
              rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false)

              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true,getTitlesWidget: getBottomTitles)
              )



            ),
            barGroups: myBarData.barData.map((data) => BarChartGroupData(x: data.x,barRods:[
              BarChartRodData(toY: data.y,color: AppPallete.green1,width: 15,borderRadius: BorderRadius.circular(5))
              ,] )).toList(),
      )),
    );
  }
}
Widget getBottomTitles(double value, TitleMeta meta) {
  const style = TextStyle(color: AppPallete.grey, fontWeight: FontWeight.normal, fontSize: 12);
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('Sun', style: style);
      break;
    case 1:
      text = const Text('Mon', style: style);
      break;
    case 2:
      text = const Text('Tue', style: style);
      break;
    case 3:
      text = const Text('Wed', style: style);
      break;
    case 4:
      text = const Text('Thu', style: style);
      break;
    case 5:
      text = const Text('Fri', style: style);
      break;
    case 6:
      text = const Text('Sat', style: style);
      break;
    default:
      text = const Text('', style: style); // Assign the Text widget to text
      break;
  }
  return SideTitleWidget(axisSide: meta.axisSide, child: text);
}
