import 'package:flutter/material.dart';
import 'package:my_app/responsive/desktop_body.dart';
import 'package:my_app/responsive/mobile_body.dart';
import 'package:my_app/responsive/responsive_layout.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobilebody: MobileBody(),
        desktopbody: DesktopBody(),
      ),
    );
  }
}
