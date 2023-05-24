import 'package:flutter/material.dart';
import '../component/horizontal_bar.dart';

class GameDetailScreen extends StatelessWidget {
  final String team1;
  final String team2;

  const GameDetailScreen({
    required this.team1,
    required this.team2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            HorizontalBarChart(
              value: 0.7, // 막대 그래프의 너비 비율 (0.0 ~ 1.0)
              color: Colors.blue, // 막대 그래프의 색상
            ),
            HorizontalBarChart(
              value: 0.9, // 막대 그래프의 너비 비율 (0.0 ~ 1.0)
              color: Colors.blue, // 막대 그래프의 색상
            ),
          ],
        ),
      ),
    );
  }
}
