

import 'package:flutter/material.dart';
import 'package:flutter_layouts/grid_layout_2/model/city.dart';

class GridPage extends StatelessWidget {
  final List<City> _allCities = City.allCities();

  GridPage(){}

  final GlobalKey scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          "Cities around the world",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        child: getHomePageBody(context),
      ),
    );
  }


  getHomePageBody(BuildContext context){
    return ListView.builder(
        itemCount: _allCities.length,
        itemBuilder: _getListItemUI,
        padding: EdgeInsets.all(0.0),
    );
  }

  Widget _getListItemUI(BuildContext context, int index, {double imgWidth : 100.0}){
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image.asset(
              "assets/"+ _allCities[index].image,
              fit: BoxFit.fitHeight,
              width: imgWidth,
            ),
            title: Text(
              _allCities[index].name,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _allCities[index].country,
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  'Population: ${_allCities[index].population}',
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.normal
                  ),
                )
              ],
            ),
            onTap: () {
              _showSnackBar(context, _allCities[index]);
            },
          ),
        ],
      ),
    );
  }

  _showSnackBar(BuildContext context, City item){
    final SnackBar objSnackbar = SnackBar(
      content: Text("${item.name} is a city in ${item.country}"),
      backgroundColor: Colors.amber,
    );

    Scaffold.of(context).showSnackBar(objSnackbar);
  }

















}