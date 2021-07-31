import 'package:flutter/material.dart';
import 'package:nome_work_6/data.dart';

class HomeWork3 extends StatefulWidget {
  HomeWork3({Key? key}) : super(key: key);

  @override
  _HomeWork3State createState() => _HomeWork3State();
}

class _HomeWork3State extends State<HomeWork3> {
  final _data = fakeData(100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 3'),
      ),
      body: Column(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double _width = constraints.constrainWidth();
                print(_width);
                return _width < 500
                    ? GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1,
                        ),
                        itemCount: _data.length,
                        itemBuilder: (context, index) => _data[index],
                      )
                    : ListView.builder(
                        itemBuilder: (context, index) => _data[index],
                        itemCount: _data.length,
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
