import 'package:flutter/material.dart';

class HomeWork extends StatefulWidget {
  HomeWork({Key? key}) : super(key: key);

  @override
  _HomeWorkState createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task #1'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var item in fakeData(20)) item,
          ],
        ),
      ),
    );
  }
}

final fakeData =
    (int count, [bool showPrint = false]) => List<Widget>.generate(count, (i) {
          if (showPrint) print(i);
          return Card(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black87))),
              child: ListTile(
                title: Text('$i'),
              ),
            ),
          );
        });

class CardM extends StatelessWidget {
  const CardM({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: Text(index.toString()),
      ),
    );
  }
}
