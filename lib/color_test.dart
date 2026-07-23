import 'package:flutter/material.dart';

void main() => runApp(const ColorTestApp());

class ColorTestApp extends StatelessWidget {
  const ColorTestApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("First AppBar"), backgroundColor:(Colors.pink),),
        backgroundColor: Colors.white, // Tests background color
        body: const Center(
          child: SizedBox(
            width: 300,
            height: 200,
            child: ColoredBox(color: Colors.grey), // Tests a solid widget color
          ),
        ),
      ),
    );
  }
}
