
import 'package:flutter/material.dart';


void main (){
  runApp(const MyApp()); //App
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
        color: Colors.amber,
        home:HomeActivity());

  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Flutter App"), ),
      body: Text("Hi this is a blank page!"),
    );

  }


}