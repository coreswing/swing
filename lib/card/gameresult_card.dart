import 'package:flutter/material.dart';
import 'package:swing/screen/team_seletion.dart';
import '../screen/crollingtest.dart';
import '../screen/game_detail_screen.dart';

class GameResultCard extends StatelessWidget {
  final String team1;
  final String team2;
  final String img1;
  final String img2;

  GameResultCard({
    required this.team1,
    required this.team2,
    required this.img1,
    required this.img2,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TeamSelect()),
          //MaterialPageRoute(builder: (context) => fetchSeoulTemperature()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                      Column(
                        children: [
                          Image(
                            image: AssetImage('assets/img/$img1.png'),
                            // 이미지 경로 설정
                            width: 80,
                            // 이미지의 가로 크기 지정
                            height: 80, // 이미지의 세로 크기 지정
                          ),
                          Text('$team1'),
                        ],
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
                        image: AssetImage('assets/img/$img2.png'), // 이미지 경로 설정
                        width: 80, // 이미지의 가로 크기 지정
                        height: 80, // 이미지의 세로 크기 지정
                      ),
                      Text('$team2'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
