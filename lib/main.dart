import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Character Card',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Grade());
  }
}

class Grade extends StatefulWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  _GradeState createState() => _GradeState();
}

class _GradeState extends State<Grade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 254, 255, 234),
        appBar: AppBar(
          title: Text("세영이의 프로필"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 218, 255, 117),
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/seyoung.jpg'),
                radius: 80,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.black,
              thickness: 0.5,
              endIndent: 30,
            ),
            Text(
              "Name",
              style: TextStyle(
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('세영이',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              "MBTI",
              style: TextStyle(
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('INFP',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text('최애 음식 : 마라탕, 연어, 회',
                    style: TextStyle(fontSize: 15, letterSpacing: 1.0)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text('주소 : 경상남도 거제시 거제면',
                    style: TextStyle(fontSize: 15, letterSpacing: 1.0)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text('취미 : 롤, 롤토체스',
                    style: TextStyle(fontSize: 15, letterSpacing: 1.0)),
              ],
            ),
          ]),
        ));
  }
}
