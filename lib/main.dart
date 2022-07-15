// ignore_for_file: public_member_api_docs

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Solid Test Task',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _randomColor = Colors.white;

  void _getRandomColor() {
    final randomGenerator = Random();
    const colorValueLimit = 256;
    final colorValues = [0, 0, 0];
    for (var i = 0; i < colorValues.length; i++) {
      colorValues[i] = randomGenerator.nextInt(colorValueLimit);
    }
    setState(() {
      _randomColor = Color.fromRGBO(
        colorValues.first,
        colorValues[1],
        colorValues[2],
        1.0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _randomColor,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _getRandomColor,
        child: const Center(
          child: Text(
            'Hey there',
            style: TextStyle(fontSize: 34),
          ),
        ),
      ),
    );
  }
}
