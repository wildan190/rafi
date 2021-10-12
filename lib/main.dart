import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Tugas Besar 1',
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: tugasrafi(),
      ),
    );
  }
}

class tugasrafi extends StatefulWidget {
  const tugasrafi({Key? key}) : super(key: key);

  @override
  _tugasrafi createState() => _tugasrafi();
}

class _tugasrafi extends State<tugasrafi> {
  int bingkai = 1;

  void randomImage() {
    setState(() {
      bingkai = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(55.0),
              child: GestureDetector(
                child: Image.asset(
                  'images/image$bingkai.jpg',
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 150.00),
                  child: GestureDetector(
                    child: FlatButton(
                      child: Text(
                        'Click!!!',
                        style: TextStyle(fontSize: 22.0),
                      ),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        randomImage();
                        print('Button Diklik');
                      },
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
