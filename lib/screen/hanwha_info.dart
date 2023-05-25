import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:swing/screen/player_info.dart';

final List<String> numbers = <String>[
  '1',
  '4',
  '5',
  '10',
];
final List<String> names = <String>[
  '문동주',
  '이승관',
  '윤대경',
  '송윤진',
];
final List<String> birth = <String>[
  '2003년 12월 23일',
  '1999년 12월 1일',
  '1994년 4월 9일',
  '1992년 7월 16일',
];
final List<String> heights = <String>[
  '188cm',
  '180cm',
  '179cm',
  '186cm',
];
final List<String> weights = <String>[
  '92kg',
  '87kg',
  '75kg',
  '78kg',
];

class HanwhaInfo extends StatelessWidget {
  const HanwhaInfo({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 65,
                  child: Image.asset('assets/img/hanwha.png'),
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                ),
                SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '한화 이글스',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('10위 2승 0무 8패'),
                    Text(
                      '대전 한화생명 이글스파크',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 10),
                  child: Text(
                    '다음 경기',
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              '한화 ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(97, 97, 97, 1),
                              ),
                            ),
                            Container(
                              height: 28,
                              child: Image.asset('assets/img/hanwha.png'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('10위 2승 0무 8패'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 14),
                    Column(
                      children: [
                        Text('04.15 토'),
                        Text('대전 17:00'),
                      ],
                    ),
                    SizedBox(width: 14),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 28,
                              child: Image.asset('assets/img/kia.png'),
                            ),
                            Text(
                              ' KIA',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(97, 97, 97, 1),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('9위 2승 1무 7패'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 14),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 10),
                  child: Text(
                    '최근 경기',
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
                    Column(
                      children: [
                        Container(
                          height: 40,
                          child: Image.asset('assets/img/kt.png'),
                          margin: EdgeInsets.only(bottom: 4),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                '2-0',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('04.09 일'),
                            ],
                          ),
                          margin: EdgeInsets.only(bottom: 4),
                        ),
                        Container(
                          width: 18,
                          height: 20,
                          child: Text(
                            '패',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          color: Color(0xffF96A6A),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          child: Image.asset('assets/img/ssg.png'),
                          margin: EdgeInsets.only(bottom: 4),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                '1-3',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('04.11 화'),
                            ],
                          ),
                          margin: EdgeInsets.only(bottom: 4),
                        ),
                        Container(
                          width: 18,
                          height: 20,
                          child: Text(
                            '승',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          color: Color(0xff6AB4F9),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          child: Image.asset('assets/img/ssg.png'),
                          margin: EdgeInsets.only(bottom: 4),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                '7-6',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('04.12 수'),
                            ],
                          ),
                          margin: EdgeInsets.only(bottom: 4),
                        ),
                        Container(
                          width: 18,
                          height: 20,
                          child: Text(
                            '패',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          color: Color(0xffF96A6A),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          child: Image.asset('assets/img/ssg.png'),
                          margin: EdgeInsets.only(bottom: 4),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                '1-0',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('04.13 목'),
                            ],
                          ),
                          margin: EdgeInsets.only(bottom: 4),
                        ),
                        Container(
                          width: 18,
                          height: 20,
                          child: Text(
                            '패',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          color: Color(0xffF96A6A),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          child: Image.asset('assets/img/kia.png'),
                          margin: EdgeInsets.only(bottom: 4),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                '6-5',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('04.15 금'),
                            ],
                          ),
                          margin: EdgeInsets.only(bottom: 4),
                        ),
                        Container(
                          width: 18,
                          height: 20,
                          child: Text(
                            '승',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          color: Color(0xff6AB4F9),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 14),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 10),
                  child: Text(
                    '최근 일정',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(97, 97, 97, 1),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 10),
                  child: Text(
                    '주전 선수',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(97, 97, 97, 1),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Image.asset(
                    'assets/img/lineup.png',
                    height: 300,
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 10),
                  child: Text(
                    '선수단',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(97, 97, 97, 1),
                    ),
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 40),
                  itemCount: numbers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 40,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PlayerInfo()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '${numbers[index]}. ',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '\t\t${names[index]}',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '\t${birth[index]}',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '\t${heights[index]}',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '\t${weights[index]}',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                    height: 10.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
