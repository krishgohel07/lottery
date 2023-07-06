// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(lottery());
}

class lottery extends StatefulWidget {
  const lottery({Key? key}) : super(key: key);

  @override
  State<lottery> createState() => _lotteryState();
}

class _lotteryState extends State<lottery> {
  var a = 0;
  var b = 0;
  var c = 0;
  
  List colorlist=[{
    'appbarcolor':Colors.red,
    'boxcolor':Colors.red,
    'minibox':Colors.blue,
    'Lottery':Colors.blue
  },
    {
      'appbarcolor':Colors.yellow,
      'boxcolor':Colors.yellow,
      'minibox':Colors.deepOrange,
      'Lottery':Colors.deepOrange
    },
    {
      'appbarcolor':Colors.green,
      'boxcolor':Colors.green,
      'minibox':Colors.greenAccent,
      'Lottery':Colors.greenAccent
    },
    {
      'appbarcolor':Colors.deepPurple,
      'boxcolor':Colors.deepPurple,
      'minibox':Colors.pinkAccent,
      'Lottery':Colors.pinkAccent
    },
    {
      'appbarcolor':Colors.brown,
      'boxcolor':Colors.brown,
      'minibox':Colors.lime,
      'Lottery':Colors.lime
    }];
  int g=0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colorlist[g]['appbarcolor'],
          title: Center(child: Text("Lottery App")
          ),
          actions: [InkWell(onTap: (){
            setState(() {
              g=Random().nextInt(4)+1;
            });
          },child: Icon(Icons.color_lens_outlined))],
        ),
        body: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: colorlist[g]['boxcolor'],
              margin: EdgeInsets.only(top: 100),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    margin: EdgeInsets.only(left: 20),
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: colorlist[g]['minibox'],),
                    child: Center(
                        child: Text(
                      "$a",
                      style: TextStyle(fontSize: 30),
                    )),
                  ),
                  Container(
                    height: 90,
                    margin: EdgeInsets.only(left: 30),
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: colorlist[g]['minibox'],),
                    child: Center(
                        child: Text(
                          "$b",
                          style: TextStyle(fontSize: 30),
                        )),
                  ),
                  Container(
                    height: 90,
                    margin: EdgeInsets.only(left: 35),
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: colorlist[g]['minibox'],),
                    child: Center(
                        child: Text(
                          "$c",
                          style: TextStyle(fontSize: 30),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 140,
            ),
            Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                  color: colorlist[g]['Lottery'],
                  borderRadius: BorderRadius.circular(12)),
              child: InkWell(
                onTap: () {

                    Future.delayed(Duration(seconds: 2),() {
                      setState(() {
                        a = Random().nextInt(9) + 1;
                      });
                    },);
                    Future.delayed(Duration(seconds: 4),() {
                      setState(() {
                        b = Random().nextInt(9) + 1;
                      });
                    },);
                    Future.delayed(Duration(seconds: 6),() {
                      setState(() {
                        c = Random().nextInt(9) + 1;
                      });
                    },);

                },
                child: Center(
                    child: Text(
                  "Get Lottery",
                  style: TextStyle(fontSize: 25),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
