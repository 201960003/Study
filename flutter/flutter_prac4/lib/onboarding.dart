import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'Welcome',
            body: 'this is first page',
            image: Image.asset('image/page1.png'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome',
            body: 'this is second page' 'hello' 'this is practice app',
            image: Image.asset('image/page2.png'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome',
            body: 'this is third page',
            image: Image.asset('image/page3.png'),
            decoration: getPageDecoration()),
      ],
      done: const Text('done'),
      onDone: () {
        //pushReplaceMent가 appbar에서 뒤로가기 버튼을 없앨 수 있음
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MyPage()));
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      // dot에 대한 속성 바꾸기
      dotsDecorator: DotsDecorator(
          color: Colors.cyan,
          size: const Size(10, 10),
          // 선택되면 간격이 벌어지는 효과
          activeSize: const Size(22, 10),
          // 선택되면 원이 기다란 볼더한 사각형으러 변함
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          //선택되면 dot 색깔 바뀌는 거
          activeColor: Colors.red),
      curve: Curves.bounceOut,
    );
  }

  PageDecoration getPageDecoration() {
    return PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.blue),
        imagePadding: EdgeInsets.only(top: 40),
        pageColor: Colors.orange);
  }
}
