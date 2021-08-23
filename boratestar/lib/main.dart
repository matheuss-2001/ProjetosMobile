import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matheus Flutter page',
      theme: ThemeData(
        backgroundColor :Color(0xff2bbab4),
      ),
      home: MyHomePage(title: 'Bem vindo ao mundo de matheus'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Color(0xfff0f0f0),
      appBar: AppBar(
        title: Text(
          "Bem vindo",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: new Icon(Icons.add_box_rounded),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: new Text("STATUS"),
                        content: new Text("ALERTA ADICIONAR"),
                        backgroundColor: Color(0xfff0f0f0),shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(5)) ,
                      ));
            },
          )
        ],
      ),
      body: Center (
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'quantidade de vezes apertadas:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
