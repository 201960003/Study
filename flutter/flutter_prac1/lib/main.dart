import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug 안보이게 하는 거
      title: 'Charactor card',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[200], //   배경을 여기다가 해야함
        appBar: AppBar(
          title: Text('PANG - PANG'),
          centerTitle: true,
          backgroundColor: Colors.blue[300],
          elevation: 0.0, // app bar의 입채감을 없애는 것
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30.0, 40.0, 0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.gif'),
                  radius: 60.0,
                ),
              ),
              Divider(
                //선
                height: 60.0, // 디바이터의 위와 아래 사이의 거리합 위 30 아래 30 이렇게 더한겅
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30.0,
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                // 사이에 박스를 넣으면 margin한 것처럼 됨
                height: 10.0,
              ),
              Text(
                'PANG_PANG',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                // 사이에 박스를 넣으면 margin한 것처럼 됨
                height: 30.0,
              ),
              Text(
                'PANG_PANG POWER LEVEL',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                // 사이에 박스를 넣으면 margin한 것처럼 됨
                height: 10.0,
              ),
              Text(
                '14',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                // 사이에 박스를 넣으면 margin한 것처럼 됨
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10.0),
                  Text(
                    'using lightsaber',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10.0),
                  Text(
                    'face hero tattoo',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10.0),
                  Text(
                    'fire flames',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  ),
                ],
              ),
              SizedBox(
                // 사이에 박스를 넣으면 margin한 것처럼 됨
                height: 30.0,
              ),
              Center(
                  child: SizedBox(
                width: 200,
                height: 100,
                child: Image.asset('assets/bottom.png'),
              )
                  // CircleAvatar(
                  //   backgroundImage: AssetImage('assets/bottom.png'),
                  //   radius: 40.0,
                  // ),
                  ),
            ],
          ),
        ));
  }
}
