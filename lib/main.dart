import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MySecondWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    _counter++;
    print(_counter);
    return Container(
      child: Center(
        child: Text("Hello!"),
      ),
    );
  }
}

class MySecondWidget extends StatefulWidget {
  @override
  _MySecondWidgetState createState() => _MySecondWidgetState();
}

class _MySecondWidgetState extends State<MySecondWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    _incrementCounter();
    return Container(
      child: Center(
        child: Text("Hello!"),
      ),
    );
  }
}



