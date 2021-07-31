import 'package:flutter/material.dart';
import 'package:nome_work_6/data.dart';

class HomeWork2 extends StatefulWidget {
  HomeWork2({Key? key}) : super(key: key);

  @override
  _HomeWork2State createState() => _HomeWork2State();
}

class _HomeWork2State extends State<HomeWork2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              // title: Text('Task 2'),
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'Task 2',
                    style: TextStyle(fontSize: 25),
                  ),
                  background: Image.network(
                    'https://picsum.photos/1200/500',
                    fit: BoxFit.cover,
                  )),
            ),
            SliverGrid.count(
              crossAxisCount: 3,
              children: [
                for (var item in fakeData(25)) item,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
