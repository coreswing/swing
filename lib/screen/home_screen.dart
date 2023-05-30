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
                  team1: 'LG',
                  team2: '기아',
                  year: 2023,
                  month: 5,
                  day: 23,
                ),
                GameScheduleCard(
                  team1: 'ssg',
                  team2: 'kt',
                  year: 2023,
                  month: 5,
                  day: 23,
                ),
                GameScheduleCard(
                  team1: 'nc',
                  team2: '키움',
                  year: 2023,
                  month: 5,
                  day: 23,
                ),
                GameScheduleCard(
                  team1: '두산',
                  team2: '삼성',
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
                    team1: '한화',
                    team2: 'KIA',
                    img1: 'hanhw',
                    img2: 'kia',
                  ),
                  GameResultCard(
                    team1: 'LG',
                    team2: 'SSG',
                    img1: 'lg',
                    img2: 'ssg',
                  ),
                  GameResultCard(
                    team1: 'nc',
                    team2: '롯데',
                    img1: 'nc',
                    img2: 'lotte',
                  ),
                  GameResultCard(
                    team1: '삼성',
                    team2: '두산',
                    img1: 'samsung',
                    img2: 'doosan',
                  ),
                  GameResultCard(
                    team1: '키움',
                    team2: 'KT',
                    img1: 'kiwoom',
                    img2: 'kt',
                  ),
                ],
              ),
            ),//1
          ],
        ),
      ),
    );
  }
}
