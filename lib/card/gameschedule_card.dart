import 'package:flutter/material.dart';
import 'package:swing/screen/game_detail_screen.dart';
import 'package:swing/screen/team_seletion.dart';

import '../component/top_bar.dart';

class GameScheduleCard extends StatelessWidget {
  final String team1;
  final String team2;
  final int year;
  final int month;
  final int day;

  GameScheduleCard({
    required this.team1,
    required this.team2,
    required this.year,
    required this.month,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GameDetailScreen(
              team1: team1,
              team2: team2,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: Colors.red,
            width: 2,
          ),
        ),
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage('assets/img/hanhwa.png'), // 이미지 경로 설정
                      width: 80, // 이미지의 가로 크기 지정
                      height: 80, // 이미지의 세로 크기 지정
                    ),
                    Text(
                      '$team1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  '8',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'vs',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '3',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage('assets/img/lotte.png'), // 이미지 경로 설정
                      width: 80, // 이미지의 가로 크기 지정
                      height: 80, // 이미지의 세로 크기 지정
                    ),
                    Text(
                      '$team2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
          ],
        ),
      ),
    ); //
  }
}
