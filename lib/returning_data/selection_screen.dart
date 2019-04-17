
import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(onPressed: (){
                Navigator.pop(context, 'Yep!!');
              },
              child: Text('Yep'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pop(context, 'Noppp');
                },
                child: Text('Nop.'),
              ),
            )
          ],
        ),
      )
    );
  }

}