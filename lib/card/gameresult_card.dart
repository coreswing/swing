import 'package:flutter/material.dart';

import '../screen/game_detail_screen.dart';

class GameResultCard extends StatelessWidget {
  final String team1;
  final String team2;

  GameResultCard({required this.team1, required this.team2});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GameDetailScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          width: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$team1 vs. $team2',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                '경기 일자: 2023년 5월 14일',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '경기 시간: 6:30 PM',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '장소: 인천 SK 행복드림구장',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '방송: KBS N Sports',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

