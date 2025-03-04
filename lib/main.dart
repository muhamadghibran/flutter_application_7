import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

// ignore: must_be_immutable
class MyWidget extends StatelessWidget {
  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
  ];
  final List<Widget> myList = List.generate(
    100,
    (index) => Text(
      "${index + 1}",
      style: TextStyle(fontSize: 20 + double.parse(index.toString())),
    ),
  );

  MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('List View')),
        body: ListView(children: myList),
      ),
    );
  }
}
