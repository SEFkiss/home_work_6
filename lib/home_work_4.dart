import 'package:flutter/material.dart';

class HomeWork4 extends StatefulWidget {
  HomeWork4({Key? key}) : super(key: key);

  @override
  _HomeWork4State createState() => _HomeWork4State();
}

class _HomeWork4State extends State<HomeWork4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 4 '),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Hello',
                  labelStyle: TextStyle(color: Colors.purple),
                  helperText: 'Поле для поиска заметок',
                  hintText: 'Введите значение',
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.purple,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 18, vertical: 9),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          color: Colors.purple,
                          width: 2,
                          style: BorderStyle.solid)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
