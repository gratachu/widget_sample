import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HelloSecondPage"),
        backgroundColor: Colors.grey,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.face, color: Colors.white,), onPressed: (){},
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/momo.jpeg'),
              // Text(text),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('前の画面へ戻る'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
