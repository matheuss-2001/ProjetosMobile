import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zadimissao/pages/login.page.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Timer(Duration(seconds: 2,), (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginPage())); });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff0066cc),
        padding: EdgeInsets.all(60),
        child: Center(
          child:Image.asset("lib/images/logo.jpg"),
        ),
      ),
    );




  }
}
