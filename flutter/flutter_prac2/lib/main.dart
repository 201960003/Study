import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'home.dart';
// import 'Secondpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'practice app',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/',
      routes: {
        '/': (context) => Mypage(),
        // '/Secondpage': (context) => Secondpage(),
      },
    );
  }
}
