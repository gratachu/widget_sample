import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  // final TextEditingController textEditingController = TextEditingController();
  final List<String> entries = <String>['A', 'aaa', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello List View"),
          backgroundColor: Colors.grey,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.face, color: Colors.white,), onPressed: (){},
            ),
          ],
        ),
      body: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('Entry ${entries[index]}'),),
          );
        },
      )
    );
  }
}
