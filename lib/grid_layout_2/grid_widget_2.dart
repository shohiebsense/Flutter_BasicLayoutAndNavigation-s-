

import 'package:flutter/material.dart';
import 'package:flutter_layouts/grid_layout_2/model/city.dart';

class GridWidget2 extends StatelessWidget {
  final List<City> allCities;

  GridWidget2({Key key, this.allCities}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
        crossAxisCount: 2);
  }




}