import 'package:flutter/material.dart';

class PlayerInfo extends StatelessWidget {
  const PlayerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swing'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('menu button is clicked');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    .asset(
                    'assets/img/chae.png',
                    width: 120,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '채은성',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '신체',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(97, 97, 97, 1),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '186cm, 92kg',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '출생',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(97, 97, 97, 1),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '1990년 2월 6일',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '학력',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(97, 97, 97, 1),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '순천효천고등학교',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '데뷔',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(97, 97, 97, 1),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '2009년 LG 트윈스',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 10),
                  child: Text(
                    '통산기록',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(97, 97, 97, 1),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          Container(
                            height: 30,
                            child: Text('타율'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('경기수'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('타수'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('안타'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('홈런'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('타점'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('득점'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('도루'),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 30,
                            child: Text('0.299'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('1019'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('3390'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('1013'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('99'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('612'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('447'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('35'),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(30, 10, 0, 10),
                  child: Text(
                    '2023 시즌',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(97, 97, 97, 1),
                    ),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  buttonPadding: EdgeInsets.symmetric(horizontal: 0),
                  children: [
                    Container(
                      width: 88,
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () {
                          print('outlined button');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('타율'),
                            Text('0.396'),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.grey.shade800,
                          side: BorderSide(
                            color: Colors.grey.shade900,
                            width: 0.3,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 88,
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () {
                          print('outlined button');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('홈런'),
                            Text('3'),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.grey.shade800,
                          side: BorderSide(
                            color: Colors.grey.shade900,
                            width: 0.3,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 88,
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () {
                          print('outlined button');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('안타'),
                            Text('21'),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.grey.shade800,
                          side: BorderSide(
                            color: Colors.grey.shade900,
                            width: 0.3,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 88,
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () {
                          print('outlined button');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('타점'),
                            Text('17'),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.grey.shade800,
                          side: BorderSide(
                            color: Colors.grey.shade900,
                            width: 0.3,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  buttonPadding: EdgeInsets.symmetric(horizontal: 0),
                  children: [
                    Container(
                      width: 88,
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () {
                          print('outlined button');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('득점'),
                            Text('9'),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.grey.shade800,
                          side: BorderSide(
                            color: Colors.grey.shade900,
                            width: 0.3,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 88,
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () {
                          print('outlined button');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('도루'),
                            Text('0'),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.grey.shade800,
                          side: BorderSide(
                            color: Colors.grey.shade900,
                            width: 0.3,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 88,
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () {
                          print('outlined button');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('출루율'),
                            Text('0.475'),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.grey.shade800,
                          side: BorderSide(
                            color: Colors.grey.shade900,
                            width: 0.3,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 88,
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () {
                          print('outlined button');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('OPS'),
                            Text('1.098'),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.grey.shade800,
                          side: BorderSide(
                            color: Colors.grey.shade900,
                            width: 0.3,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Image.asset(
                    'assets/img/graph.png',
                    height: 100,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(30, 10, 0, 10),
                  child: Text(
                    '시즌 예상기록',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(97, 97, 97, 1),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          Container(
                            height: 30,
                            child: Text('타율'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('경기수'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('타수'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('안타'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('홈런'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('타점'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('득점'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('도루'),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 30,
                            child: Text('0.296'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('126'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('467'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('138'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('12'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('83'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('48'),
                            alignment: Alignment.center,
                          ),
                          Container(
                            height: 30,
                            child: Text('6'),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(30, 10, 0, 10),
                  child: Text(
                    '히트박스 & 타구분포',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(97, 97, 97, 1),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 8, 0, 40),
                      child: Image.asset(
                        'assets/img/hitbox.png',
                        height: 130,
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
