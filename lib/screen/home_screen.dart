import 'package:flutter/material.dart';
import 'package:swing/card/gameschedule_card.dart';
import 'package:swing/component/gameresult_bar.dart';
import 'package:swing/component/gameschedule_bar.dart';
import 'package:swing/component/top_bar.dart';
import '../card/gameresult_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopBar(
              title: 'Swing',
              onMenuPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              '오늘의 경기',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            GameScheduleBar(
              children: [
                GameScheduleCard(
                  team1: '롯데',
                  team2: '한화',
                  year: 2023,
                  month: 5,
                  day: 23,
                ),
                GameScheduleCard(
                  team1: '롯데',
                  team2: '한화',
                  year: 2023,
                  month: 5,
                  day: 23,
                ),
                GameScheduleCard(
                  team1: '롯데',
                  team2: '한화',
                  year: 2023,
                  month: 5,
                  day: 23,
                ),
                GameScheduleCard(
                  team1: '롯데',
                  team2: '한화',
                  year: 2023,
                  month: 5,
                  day: 23,
                ),
                GameScheduleCard(
                  team1: '롯데',
                  team2: '한화',
                  year: 2023,
                  month: 5,
                  day: 23,
                ),
              ],
            ),
            SizedBox(
              width: 16.0,
            ),
            Text(
              '지난 경기 결과',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            SizedBox(
              height: 450,
              width: 450,
              child: GameResultBar(
                children: [
                  GameResultCard(
                    team1: '롯데',
                    team2: '기아',
                  ),
                  GameResultCard(
                    team1: '롯데',
                    team2: '기아',
                  ),
                  GameResultCard(
                    team1: '롯데',
                    team2: '기아',
                  ),
                  GameResultCard(
                    team1: '롯데',
                    team2: '기아',
                  ),
                  GameResultCard(
                    team1: '롯데',
                    team2: '기아',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
