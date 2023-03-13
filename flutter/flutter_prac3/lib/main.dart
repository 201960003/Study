import 'package:flutter/material.dart';
import 'package:my_app/ScreenC.dart';
import 'ScreenA.dart';
import 'ScreenB.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      title: 'Page',
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/ScreenB': (context) => ScreenB(),
        '/ScreenC': (context) => ScreenC(),
      },
    );
  }
}
