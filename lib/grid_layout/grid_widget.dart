

import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
        crossAxisCount: 2,
      children: List.generate(100, (index){
        Center(
          child: Text(
            'Item $index',
            style: Theme.of(context).textTheme.headline,
          ),
        );
      })
    );
  }

}