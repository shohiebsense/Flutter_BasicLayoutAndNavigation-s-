

import 'package:flutter/material.dart';
import 'package:flutter_layouts/returning_data/selection_button.dart';

class ReturningDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Returning Data Demo'),
      ),
      body: Center(child: SelectionButton()),
    );
  }
}