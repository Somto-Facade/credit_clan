import 'package:credit_clan_interview/constants/colors/index.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key,}) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: LineChart(
        LineChartData(
          borderData: FlBorderData(show: false),
          minX: -1,
          maxX: 6,
          minY: 0,
          maxY: 3,
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: SideTitles(
              showTitles: true,
              margin: 5,
              getTextStyles: (context, value){
                return TextStyle(
                color: AppColors.deepBlue.withOpacity(0.7),
                  fontSize: 14,
                  fontWeight: FontWeight.w700
              );} ,
              getTitles: (value){
                if(value==0){
                  return '7';
                }
                else if (value == 1){
                  return '8';
                }
                else if (value == 2){
                  return '9';
                }
                else if (value == 3){
                  return '10';
                }
                else if (value == 4){
                  return '11';
                }
                else if (value == 5){
                  return '12';
                }
                else{
                  return '';
                }
              }
            ),
            topTitles: SideTitles(
              showTitles: false
            ),
            leftTitles: SideTitles(
                showTitles: false
            ),
            rightTitles: SideTitles(
                showTitles: false
            ),
          ),
          gridData: FlGridData(
            drawVerticalLine: false
          ),
          lineBarsData: [LineChartBarData(
            spots: [
              const FlSpot(-1, 0.5),
              const FlSpot(-0.2, 1),
              const FlSpot(0.2, 0.8),
              const FlSpot(0.8, 1.4),
              const FlSpot(1, 1),
              const FlSpot(2, 1.5),
              const FlSpot(3, 2),
              const FlSpot(3.5, 1.5),
              const FlSpot(4, 2),
              const FlSpot(5, 2.5),
              const FlSpot(6, 2),
            ],
            isCurved: true,
            dotData: FlDotData(
              show:false
            ),
            colors: [const Color(0xff1CD8D2), const Color(0xff93EDC7)],
            barWidth: 3,
          )]
        )
      )
    );
  }
}
