import 'package:flutter/material.dart';

class HorizontalBarChart extends StatelessWidget {
  final double value;
  final Color color;

  HorizontalBarChart({required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20, // 막대 그래프의 높이
      child: FractionallySizedBox(
        widthFactor: value, // 막대 그래프의 너비 비율
        child: Container(
          color: color, // 막대 그래프의 색상
        ),
      ),
    );
  }
}
