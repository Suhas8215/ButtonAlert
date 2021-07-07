import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ButtonAlert"),),
      body: Center(
        child: Column(children: [
          GestureDetector(
            onTap: () {
              print("tap me");
            },
            child: Container(
                height: 250.0,
                width: 200.0,
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                )),
          ),
          GestureDetector(
            onTap: () {
              print("tap me");
            },
            child: Container(
              height: 200.0,
              width: 200.0,
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("tap me");
            },
            child: Container(
              height: 200.0,
              width: 250.0,
              margin: EdgeInsets.all(20.0),
              decoration:
              BoxDecoration(color: Colors.green, shape: BoxShape.circle),
            ),
          ),
        ]),
      ),
    );
  }
}
