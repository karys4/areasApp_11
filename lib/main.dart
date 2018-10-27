import 'package:flutter/material.dart';
import 'CirclePage.dart';
import 'TrianglePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Calculo de Areas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Column(        
        children: <Widget>[
          Text('Selecciona una figura',
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.change_history),
                      title: Text('Triángulo'),
                    ),
                    ListTile(
                      leading: Icon(Icons.adjust),
                      title: Text('Círculo'),
                    ),
                    ListTile(
                      leading: Icon(Icons.crop_16_9),
                      title: Text('Rectángulo'),
                    ),
                  ],
             ) ,
          ),
         /* ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
              ),
            ],
          )*/
        ],
      ),
    );
  }
}
