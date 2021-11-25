import 'package:flutter/material.dart';

class Mylist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My list View'),
      // ),
      body: Container(
        child: GridView(
          children: [
            Container(
              child: Icon(Icons.people),
              color: Colors.deepOrange,
            ),
            Container(
              child: Icon(Icons.animation_outlined),
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.red,
              child: Center(child: Text('Im white')),
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.yellow,
            ),
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
        ),
      ),
    );
  }
}
