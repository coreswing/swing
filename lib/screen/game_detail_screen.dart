import 'package:flutter/material.dart';
import 'package:swing/component/top_bar.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TopBar(
              title: 'Swing',
              onMenuPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              '스코어 예측',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            GameDetailCard(),
            Text(
              '상대 전적',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            RelativeRecord(),
            Text(
              '세부 예측',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            detailprediction(),
            Text(
              'MVP 예측',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            mvpprediction(),
          ],
        ),
      ),
    );
  }
}

class GameDetailCard extends StatelessWidget {
  const GameDetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: Colors.grey,
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
                    Text(
                      '한화 이글스',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('문동주'),
                  ],
                ),
                Image(
                  image: AssetImage('assets/img/hanhwa.png'), // 이미지 경로 설정
                  width: 80, // 이미지의 가로 크기 지정
                  height: 80, // 이미지의 세로 크기 지정
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
                Image(
                  image: AssetImage('assets/img/lotte.png'), // 이미지 경로 설정
                  width: 80, // 이미지의 가로 크기 지정
                  height: 80, // 이미지의 세로 크기 지정
                ),
                Column(
                  children: [
                    Text(
                      '롯데 자이언츠',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('나균안'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class RelativeRecord extends StatelessWidget {
  const RelativeRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/img/hanhwa.png'), // 이미지 경로 설정
                        width: 50, // 이미지의 가로 크기 지정
                        height: 50, // 이미지의 세로 크기 지정
                      ),
                      Text(
                        '한화 이글스',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '롯데 자이언츠',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image(
                        image: AssetImage('assets/img/lotte.png'), // 이미지 경로 설정
                        width: 50, // 이미지의 가로 크기 지정
                        height: 50, // 이미지의 세로 크기 지정
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('1위 8승 0무 2패'),
                      Text('8위 2승 0무 8패'),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          graph1(
                            a: 80,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('0.800'),
                        ],
                      ),
                      Row(
                        children: [
                          graph1(
                            a: 32.4,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('0.324'),
                        ],
                      ),
                      Row(
                        children: [
                          graph1(
                            a: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('0.320'),
                        ],
                      ),
                      Text('10전 8승 2패'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('승률'),
                      Text('타율'),
                      Text('평균자책'),
                      Text('상대전적'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('0.200'),
                          SizedBox(
                            width: 5,
                          ),
                          graph2(
                            a: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('0.214'),
                          SizedBox(
                            width: 5,
                          ),
                          graph2(
                            a: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('0.332'),
                          SizedBox(
                            width: 5,
                          ),
                          graph2(
                            a: 30,
                          ),
                        ],
                      ),
                      Text('10전 2승 8패'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class detailprediction extends StatelessWidget {
  const detailprediction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/img/hanhwa.png'), // 이미지 경로 설정
                        width: 50, // 이미지의 가로 크기 지정
                        height: 50, // 이미지의 세로 크기 지정
                      ),
                      Text(
                        '한화 이글스',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '롯데 자이언츠',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image(
                        image: AssetImage('assets/img/lotte.png'), // 이미지 경로 설정
                        width: 50, // 이미지의 가로 크기 지정
                        height: 50, // 이미지의 세로 크기 지정
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          graph1(
                            a: 80,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('8'),
                        ],
                      ),
                      Row(
                        children: [
                          graph1(
                            a: 30,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('3'),
                        ],
                      ),
                      Row(
                        children: [
                          graph1(
                            a: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('2'),
                        ],
                      ),
                      Row(
                        children: [
                          graph1(
                            a: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('2'),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('안타'),
                      Text('홈런'),
                      Text('삼진'),
                      Text('실책'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('8'),
                          SizedBox(
                            width: 5,
                          ),
                          graph2(
                            a: 80,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('2'),
                          SizedBox(
                            width: 5,
                          ),
                          graph2(
                            a: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('6'),
                          SizedBox(
                            width: 5,
                          ),
                          graph2(
                            a: 30,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('1'),
                          SizedBox(
                            width: 5,
                          ),
                          graph2(
                            a: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class mvpprediction extends StatelessWidget {
  const mvpprediction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
        ),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '투수 부문',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/img/pitcher1.jpeg'), // 이미지 경로 설정
                      width: 50, // 이미지의 가로 크기 지정
                      height: 50, // 이미지의 세로 크기 지정
                    ),
                    Text(
                      '한화 문동주',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '타자 부문',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/img/hitter.png'), // 이미지 경로 설정
                      width: 50, // 이미지의 가로 크기 지정
                      height: 50, // 이미지의 세로 크기 지정
                    ),
                    Text(
                      '한화 노시환',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class graph1 extends StatelessWidget {
  final double a;

  const graph1({
    required this.a,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // 그래프의 전체 너비
      height: 10, // 그래프의 높이
      decoration: BoxDecoration(
        color: Colors.grey[300], // 그래프의 배경색
        borderRadius: BorderRadius.circular(10), // 그래프의 테두리 둥글기 설정
      ),
      child: Align(
        alignment: Alignment.centerRight, // 그래프의 시작 위치 (왼쪽)
        child: Container(
          width: a, // 그래프의 채워진 너비
          decoration: BoxDecoration(
            color: Colors.blue, // 그래프의 채워진 색
            borderRadius: BorderRadius.circular(10), // 그래프의 테두리 둥글기 설정
          ),
        ),
      ),
    );
  }
}

class graph2 extends StatelessWidget {
  final double a;

  const graph2({
    required this.a,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // 그래프의 전체 너비
      height: 10, // 그래프의 높이
      decoration: BoxDecoration(
        color: Colors.grey[300], // 그래프의 배경색
        borderRadius: BorderRadius.circular(10), // 그래프의 테두리 둥글기 설정
      ),
      child: Align(
        alignment: Alignment.centerLeft, // 그래프의 시작 위치 (왼쪽)
        child: Container(
          width: a, // 그래프의 채워진 너비
          decoration: BoxDecoration(
            color: Colors.red, // 그래프의 채워진 색
            borderRadius: BorderRadius.circular(10), // 그래프의 테두리 둥글기 설정
          ),
        ),
      ),
    );
  }
}
