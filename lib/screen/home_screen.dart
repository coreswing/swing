import 'package:flutter/material.dart';
import 'package:swing/card/gameschedule_card.dart';
import 'package:swing/component/gameresult_bar.dart';
import 'package:swing/component/gameschedule_bar.dart';
import 'package:swing/component/top_bar.dart';
import 'package:swing/screen/game_detail_screen.dart';

import '../card/gameresult_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

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
              width: 16.0,
            ),
            Text('오늘의 경기'),
            SizedBox(
              width: 16.0,
            ),
            GameScheduleBar(
              children: [
                GameScheduleCard(
                  team1: '롯데',
                  team2: '한화',
                ),
                GameScheduleCard(
                  team1: '롯데',
                  team2: '한화',
                ),
                GameScheduleCard(
                  team1: '롯데',
                  team2: '한화',
                ),
                GameScheduleCard(
                  team1: '롯데',
                  team2: '한화',
                ),
                GameScheduleCard(
                  team1: '롯데',
                  team2: '한화',
                ),
              ],
            ),
            SizedBox(
              width: 16.0,
            ),
            Text('지난 경기결과'),
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
