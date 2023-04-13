import 'package:flutter/material.dart';
import 'package:widget_sample/second_page.dart';

class FirstPage extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    labelText: 'Enter text',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    String inputText = textEditingController.text;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondPage(text: inputText),
                        ),
                    );
                  },
                  child: const Text('次の画面へ'),
                ),
              ],
            ),
          ),
        )
    );
  }
}