import 'dart:html';

import 'package:flutter/material.dart';
import 'ScreenB.dart';
import 'ScreenC.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
      ),
      body: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ScreenB');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("go to ScreenB"),
                      duration: Duration(seconds: 5),
                      action: SnackBarAction(label: 'Undo', onPressed: () {})),
                );
              },
              child: Text('Go to ScreenB'),
            ),
            SizedBox(
              width: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ScreenC');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("go to ScreenC"),
                      duration: Duration(seconds: 5),
                      action: SnackBarAction(label: 'Undo', onPressed: () {})),
                );
              },
              child: Text('Go to ScreenC'),
            ),
          ])),
    );
  }
}
