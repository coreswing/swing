import 'package:flutter/material.dart';
import 'package:swing/screen/admin_detail.dart';

final List<String> level = <String>[
  '8',
  '24',
  '8',
  '24',
];
final List<String> team = <String>[
  'hanwha',
  'ssg',
  'samsung',
  'lg',
];
final List<String> id = <String>[
  'Test_ID1',
  'Test_ID2',
  'Test_ID3',
  'Test_ID4',
];
final List<String> nickname = <String>[
  'test1',
  'test2',
  'test3',
  'test4',
];
final List<String> signin = <String>[
  '2023.04.10',
  '2023.04.11',
  '2023.04.12',
  '2023.04.13',
];

class AdminMain extends StatelessWidget {
  const AdminMain({super.key});

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
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 16),
              child: Text(
                '회원관리',
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
                Text('아이디'),
                SizedBox(width: 16),
                Container(
                  width: 200,
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.grey.shade800),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.grey.shade800),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.grey.shade800),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  height: 35,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('검색'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.grey.shade800,
                      side: BorderSide(
                        color: Colors.grey.shade900,
                        width: 0.5,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 12),
            ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 40),
              itemCount: level.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 40,
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AdminDetail()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 24,
                            child: Image.asset(
                                'assets/img/${level[index]}.png'),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 24,
                            child:
                                Image.asset('assets/img/${team[index]}.png'),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '${id[index]}',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '${nickname[index]}',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '${signin[index]}',
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
      ),
    );
  }
}
