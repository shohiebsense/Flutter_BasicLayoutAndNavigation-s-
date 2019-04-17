import 'package:flutter/material.dart';
import 'package:flutter_layouts/returning_data/selection_screen.dart';

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        _navigateAndDisplaySelection(context);
      },
      child: Text('press here and pick an option'),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen())
    );

    Scaffold.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text("$result")));
  }




}