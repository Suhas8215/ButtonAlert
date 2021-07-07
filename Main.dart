import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:tla4/Text%20and%20Call.dart';

import 'home.dart';
void main(){return runApp(MyApp());}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: IndexedStack(
            index: index,
            children: [
              Home(),
              TextandCall(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Text and Call"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Contacts")

          ],
            currentIndex: index,
            onTap: (i) {
              setState(() {
                index = i;
              });
            },
          ),
        )
    );
  }}
