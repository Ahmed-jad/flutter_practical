import 'package:flutter/material.dart';

///containers
///row
/////column

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('MY AIRPORT 101!'),
            ),
            body: Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0),
                child: Column(children: [
                  Text(
                    'WELCOME TO MY AIRPORT',
                    style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                        decoration: TextDecoration.underline),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Somali Airline: ',
                          style: TextStyle(fontSize: 30, color: Colors.orange),
                        ),
                      ),
                      Expanded(
                          child: Text(
                        'Deperture time is 11:AM  ',
                        style:
                            TextStyle(fontSize: 20, color: Colors.orange[700]),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Ethiopia Airway: ',
                          style: TextStyle(fontSize: 30, color: Colors.orange),
                        ),
                      ),
                      Expanded(
                          child: Text(
                        'Deperture time is 12:30AM  ',
                        style: TextStyle(fontSize: 20, color: Colors.orange),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Uganda Airline:',
                          style: TextStyle(fontSize: 30, color: Colors.orange),
                        ),
                      ),
                      Expanded(
                          child: Text(
                        'Deperture time is 1:15PM ',
                        style: TextStyle(
                            fontSize: 20, color: Colors.orange.shade600),
                      )),
                    ],
                  ),
                  Button()
                ])))),
  );
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Flight Confirm'),
                  content: Text('have a good flight'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'))
                  ],
                );
              });
        },
        child: Text('Check Flight'),
      ),
    );
  }
}
