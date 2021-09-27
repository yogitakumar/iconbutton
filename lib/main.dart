import 'package:flutter/material.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

bool _isBluetoothOn = false;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () async {
                print(_isBluetoothOn);
                setState(() {
                  _isBluetoothOn = !_isBluetoothOn;
                });
                print(_isBluetoothOn);
              },
              icon: Icon(
                _isBluetoothOn ? Icons.favorite : Icons.favorite_border,
                color: Colors.greenAccent,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
