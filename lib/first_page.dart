import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final List<String> entries = <String>['Feel Special', 'Set Me Free', 'Talk that talk'];
  final List<String> repeated = <String>['1529万回 再生', '1000万回 再生', '9999万回 再生'];
  final List<String> images = <String>['https://i.ytimg.com/vi/fMIn43MiwG8/maxresdefault.jpg', 'https://i.ytimg.com/vi/f5_wn8mexmM/maxresdefault.jpg', "https://i.ytimg.com/vi/3n9rDwpa6QA/maxresdefault.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Youtube Trace View",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.face, color: Colors.white,), onPressed: (){},
            ),
            const SizedBox(width: 4,),
            IconButton(
              icon: const Icon(Icons.laptop_chromebook, color: Colors.white,), onPressed: (){},
            ),
            const SizedBox(width: 4,),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white,), onPressed: (){},
            ),
          ],
        ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 80,
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network(
                      images[index],
                    ),
                    const SizedBox(width: 16,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entries[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            repeated[index],
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
        ),
      )
    );
  }
}
