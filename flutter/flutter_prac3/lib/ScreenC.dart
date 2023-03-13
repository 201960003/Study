import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenC'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text("go to ScreenA"),
                  duration: Duration(seconds: 5),
                  action: SnackBarAction(label: 'Undo', onPressed: () {})),
            );
          },
          child: Text('Go to ScreenA'),
        ),
      ),
    );
  }
}
