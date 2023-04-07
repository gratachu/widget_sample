import 'package:flutter/material.dart';
import 'package:widget_sample/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("HelloFirstPage"),
          backgroundColor: Colors.grey,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.face, color: Colors.white,), onPressed: (){},
            ),
          ],
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
              );
            },
            child: const Text('次の画面へ'),
          ),
        )
    );
  }
}