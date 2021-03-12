import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color color = Colors.redAccent;
  bool isRedSelected = true;

  void _updateColor() {
    setState(() {
      isRedSelected = !isRedSelected;
      print(isRedSelected);
    });
  }

  @override
  Widget build(BuildContext context) {
    var curentColor = isRedSelected ? Colors.red : Colors.yellow;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          color: curentColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Center(
                  child: Text(
                    'You have pushed the  this many times:',
                  ),
                ),
              ),
              Text(
                '',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _updateColor,
          tooltip: 'Increment',
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                height: 6,
                color: Colors.red,
              )
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
