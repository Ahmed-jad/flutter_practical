import 'package:flutter/material.dart';
import 'package:practica_app/list_view.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Register was success'),
            ElevatedButton(
              child: Text('Go back'),
              onPressed: () {
                // Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Mylist()));
              },
            )
          ],
        ),
      ),
    );
  }
}
