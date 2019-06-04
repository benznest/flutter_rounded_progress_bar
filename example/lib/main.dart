import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double percent = 10;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rounded Progrss Bar'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  percent += 5;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  percent -= 5;
                });
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: ListView(children: <Widget>[
              Column(
                children: <Widget>[
                  RoundedProgressBar(percent: percent),
                  RoundedProgressBar(
                      percent: percent, theme: RoundedProgressBarTheme.green),
                  RoundedProgressBar(
                      percent: percent,
                      theme: RoundedProgressBarTheme.red,
                      reverse: true),
                  RoundedProgressBar(
                      percent: percent, theme: RoundedProgressBarTheme.purple),
                  RoundedProgressBar(
                      percent: percent,
                      theme: RoundedProgressBarTheme.yellow,
                      borderRadius: BorderRadius.circular(24)),
                  RoundedProgressBar(
                      percent: percent,
                      height: 70,
                      theme: RoundedProgressBarTheme.midnight,
                      childCenter: Text("$percent%",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow))),
                  RoundedProgressBar(
                    style:
                        RoundedProgressBarStyle(
                            widthShadow: 30,colorBorder: Colors.blue[200]),
                    percent: percent,
                    reverse: true,
                  ),
                  RoundedProgressBar(
                    style: RoundedProgressBarStyle(borderWidth: 0,
                      widthShadow: 0),
                    margin: EdgeInsets.symmetric(vertical: 16),borderRadius: BorderRadius.circular(24),
                    percent: percent,
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
