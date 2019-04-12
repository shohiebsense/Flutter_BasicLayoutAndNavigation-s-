import 'package:flutter/material.dart';
import 'package:path/path.dart';

class FirstRoute extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Layout - First Route'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Go to next route'),
            onPressed: () {
              //todo insert navigate
              goToNextPage(context);
            },
          ),
        )
    );
  }
}

void goToNextPage(BuildContext context){
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => SecondRoute()));
}

class SecondRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thirrd Layout - Second Route'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              goToPreviousPage(context);
            },
            child: Text('Go back')
          ),
        )
    );
  }
}

void goToPreviousPage(BuildContext context){
  Navigator.pop(context);
}