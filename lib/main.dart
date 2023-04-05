import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("HelloWorldApp"),
        backgroundColor: Colors.grey,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.face, color: Colors.white,), onPressed: (){},
          ),
        ],
      ),
      body: Container(
        color: Colors.white12,
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            Text("25歳"),
            Text("25歳"),
            Text("25歳"),
            Text("25歳"),
            Container(
              width: 30,
              height: 50,
              color: Colors.red,
            ),
            Text("25歳"),
            Text("25歳")
          ],
        ),
      ),
    );
  }
}
