import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_icon_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

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
          title: Text('Rounded Progrss Bar'),
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
          padding: const EdgeInsets.all(200.0),
          child: Center(
            child: ListView(children: <Widget>[
              Column(
                children: <Widget>[
                  RoundedProgressBar(
                      percent: percent, childCenter: Text("$percent%")),
                  RoundedProgressBar(
                      childLeft: Text("$percent%",
                          style: TextStyle(color: Colors.white)),
                      percent: percent,
                      theme: RoundedProgressBarTheme.green),
                  RoundedProgressBar(
                      childRight: Text("$percent%",
                          style: TextStyle(color: Colors.white)),
                      percent: percent,
                      theme: RoundedProgressBarTheme.red,
                      reverse: true),
                  RoundedProgressBar(
                      percent: percent,
                      theme: RoundedProgressBarTheme.purple,
                      childLeft: AnimatedContainer(
                        padding: EdgeInsets.only(left: 8),
                        duration: Duration(milliseconds: 500),
                        child: Icon(
                          Icons.airplanemode_active,
                          color: Colors.white,
                        ),
                      ),
                      paddingChildLeft: EdgeInsets.all(0)),
                  RoundedProgressBar(
                      milliseconds: 1000,
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
                    style: RoundedProgressBarStyle(
                        widthShadow: 30, colorBorder: Colors.blue[200]),
                    percent: percent,
                    reverse: true,
                  ),
                  RoundedProgressBar(
                    style:
                        RoundedProgressBarStyle(borderWidth: 0, widthShadow: 0),
                    margin: EdgeInsets.symmetric(vertical: 16),
                    borderRadius: BorderRadius.circular(24),
                    percent: percent,
                  ),

                  IconRoundedProgressBar(
                    icon: Padding(
                        padding: EdgeInsets.all(8), child: Icon(Icons.person)),
                    theme: RoundedProgressBarTheme.green,
                    margin: EdgeInsets.symmetric(vertical: 16),
                    borderRadius: BorderRadius.circular(6),
                    percent: percent,
                  ),

                  IconRoundedProgressBar(
                    widthIconSection: 70,
                    reverse: true,
                    icon: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.airline_seat_flat, color: Colors.white)),
                    style: RoundedProgressBarStyle(
                        colorBackgroundIcon: Color(0xffc0392b),
                        colorProgress: Color(0xffe74c3c),
                        colorProgressDark: Color(0xffc0392b),
                        colorBorder: Color(0xff2c3e50),
                        backgroundProgress: Color(0xff4a627a),
                        borderWidth: 4,
                        widthShadow: 6),
                    margin: EdgeInsets.symmetric(vertical: 16),
                    borderRadius: BorderRadius.circular(6),
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
