

import 'package:flutter/material.dart';
import 'package:flutter_layouts/grid_layout_2/model/city.dart';

class GridPage extends StatelessWidget {

  final List<City> _allCities = City.allCities();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
   /* return ListView.builder(
        itemCount: _allCities.length,
        itemBuilder: _getListItemUI,
        padding: EdgeInsets.all(0.0),
    );*/
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 8.0 / 9.0,
      children: _getGridViewItems(context),
    );
  }

  _getGridViewItems(BuildContext context) {
    List<Widget> allWidgets = new List<Widget>();
    for (int i = 0; i < _allCities.length; i++) {
      var widget = _getGridItemUI(context, _allCities[i]);
      allWidgets.add(widget);
    };
    return allWidgets;
  }


  _getGridItemUI(BuildContext context, City item) {
    return new InkWell(
        onTap: () {
          _showSnackBar(context, item);
        },
        child: new Card(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Image.asset(
                "images/" + item.image,
                fit: BoxFit.fill,
                //height:100.0,
              ),
              new Expanded(
                  child: new Center(
                      child: new Column(
                        children: <Widget>[
                          new SizedBox(height: 8.0),
                          new Text(
                            item.name,
                            style: new TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          new Text(item.country),
                          new Text('Population: ${item.population}')
                        ],
                      )))
            ],
          ),
          elevation: 2.0,
          margin: EdgeInsets.all(5.0),
        ));
  }

  Widget _getListItemUI(BuildContext context, int index, {double imgWidth : 100.0}){
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image.asset(
              "images/"+ _allCities[index].image,
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