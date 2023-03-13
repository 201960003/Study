import 'package:flutter/material.dart';
// import 'Secondpage.dart';

//home page

class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('PANG - PANG'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        elevation: 0.0,
        actions: <Widget>[
          // 복수의 아이콘 버튼 등을 오른쪽에 배치할때 사용
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // print('Shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // print('Shopping cart button is clicked');
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pro.gif'),
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
            SizedBox(
              height: 20.0,
            ),
            // MySnackBar(),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      // Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       flutterToast();
      //     },
      //     child: Text('Toast'),
      //     style: ButtonStyle(
      //         backgroundColor: MaterialStateProperty.all(Colors.red)),
      //   ),
      // ),
      //  MySnackBar(),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/rightpro.gif'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.gif'),
                ),
              ],
              accountName: Text('PANG_PANG'),
              accountEmail: Text('dddd@dddd.com'),
              onDetailsPressed: () {
                // print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                // print('Home is cliked');
                Navigator.pop(context);
                // Navigator.pushNamed(context, '/');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                // print('setting is cliked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                // print('Q&A is cliked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonPadding: EdgeInsets.all(20.0),
            children: [
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("안녕하세요!!^^"),
                        duration: Duration(seconds: 5),
                        action:
                            SnackBarAction(label: 'Undo', onPressed: () {})));
                  },
                  child: Text('Shoe me')),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("go to second page"),
                        duration: Duration(seconds: 5),
                        action:
                            SnackBarAction(label: 'Undo', onPressed: () {})));
                  },
                  child: Text('Second Page'))
            ],
          )
        ],
      )),
    );
  }
}



// 토스트 메세지 함수 - 근데 계속 오류나서 스낵바로 
// 토스트 메세지는 함수로 불러와야함
// void flutterToast() {
//   // Fluttertoast.showToast(
//   //     msg: "Fluttesdsdsdr",
//   //     toastLength: Toast.LENGTH_SHORT,
//   //     gravity: ToastGravity.BOTTOM_LEFT,
//   //     backgroundColor: Colors.redAccent,
//   //     textColor: Colors.white,
//   //     fontSize: 20.0);
//   Fluttertoast.showToast(
//     msg: "THE toast message",
//     toastLength: Toast.LENGTH_SHORT,
//     timeInSecForIosWeb: 1,
//     backgroundColor: Colors.black,
//     textColor: Colors.white,
//     fontSize: 16.0,
//   );
// }
