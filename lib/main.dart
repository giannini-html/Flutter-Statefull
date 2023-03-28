import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

double tamanho = 300;
double red = 127.5;
double green = 127.5;
double blue = 127.5;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (tamanho > 50) {
                    tamanho -= 50;
                  }
                });
              },
              icon: Icon(Icons.remove)),
          IconButton(
            onPressed: () {
              setState(() {
                tamanho = 100;
              });
            },
            icon: const Text('S'),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  tamanho = 300;
                });
              },
              icon: Text('M')),
          IconButton(
              onPressed: () {
                setState(() {
                  tamanho = 500;
                });
              },
              icon: Text('L')),
          IconButton(
              onPressed: () {
                setState(() {
                  if (tamanho < 500) {
                    tamanho += 50;
                  }
                });
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Icon(
              Icons.alarm,
              size: tamanho,
              color:
                  Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1),
            ),
          ),
          Slider(
              value: red,
              activeColor: Colors.red,
              min: 0,
              max: 255,
              onChanged: (double value) {
                setState(() {
                  red = value;
                });
              }),
          Slider(
              value: green,
              activeColor: Colors.green,
              min: 0,
              max: 255,
              onChanged: (double value) {
                setState(() {
                  green = value;
                });
              }),
          Slider(
              value: blue,
              activeColor: Colors.blue,
              min: 0,
              max: 255,
              onChanged: (double value) {
                setState(() {
                  blue = value;
                });
              }),
        ],
      ),
    );
  }
}
