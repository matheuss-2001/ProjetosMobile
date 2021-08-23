import 'package:flutter/material.dart';
import 'package:projetinholista/home.page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      home:HomePage(),debugShowCheckedModeBanner: false,
    );

  }
}


