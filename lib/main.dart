import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Ask Me')),
      ),
      body: Balls(),
    );
  }
}

class Balls extends StatefulWidget {
  @override
  State<Balls> createState() => _BallsState();
}

class _BallsState extends State<Balls> {
  int balln = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            balln=Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$balln.png'),
      ),
    );
  }
}
