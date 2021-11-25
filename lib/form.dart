import 'package:flutter/material.dart';
import 'package:practica_app/sucess.dart';

class MycustomForm extends StatefulWidget {
  const MycustomForm({Key? key}) : super(key: key);

  @override
  _MycustomFormState createState() => _MycustomFormState();
}

class _MycustomFormState extends State<MycustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                hintText: 'Enter your Name',
                labelText: 'Name',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter your Name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                hintText: 'Enter your Number',
                labelText: 'Phone',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter your phone number';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.date_range_sharp),
                hintText: 'Enter your DOB',
                labelText: 'DOB',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter your DOB';
                }
                return null;
              },
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: ElevatedButton(
                child: Text('submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondScreen()));
                  }
                },
              ),
            )
          ],
        ));
  }
}
