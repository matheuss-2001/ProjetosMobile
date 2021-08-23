import 'package:flutter/material.dart';
import 'package:zadimissao/pages/splash.screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build (BuildContext context){
    return MaterialApp(
        title:'Zcontrata',
        theme: ThemeData(
        backgroundColor :Color(0xff2bbab4),),
        darkTheme: ThemeData.dark(),
        home:Splash(), debugShowCheckedModeBanner: false,
    );

  }
}








    //z_components: ^0.9.35+29




