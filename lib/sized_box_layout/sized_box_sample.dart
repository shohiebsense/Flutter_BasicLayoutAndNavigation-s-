import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SizedBoxSampleWidget extends StatelessWidget {
  static final showCard = true;

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Sized Box Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sized Box Demo'),
        ),
        body: showCard ? _buildListView() : _buildStack(),
      ),
    );
  }


  Widget _buildCard() => SizedBox(
    height: 210,
    child: Card(
      child: Column(
        children: [
          ListTile(
            title: Text('1625 Main Street',
            style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('Rancaekek, Bandung 40394'),
            leading: Icon(
              Icons.restaurant_menu,
              color: Colors.lightBlue[500],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('(022) 218218128',
            style: TextStyle(fontWeight: FontWeight.w500),),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.lightBlue[500],
            ),
          ),
          ListTile(
            title: Text('costa@shohieb.com'),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.lightBlue[500],
            ),
          ),
        ]
      )
    )
  );

  Widget _buildStack() => Stack(
    alignment: AlignmentDirectional.topCenter,
    children: <Widget>[
      CircleAvatar(
        backgroundImage: AssetImage('images/pic1.jpg'),
        radius: 100,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.black45,
        ),
        child: Text(
          'Jessie S',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        )
      )
    ],
  );

  Widget _buildListView() => ListView(
    children: <Widget>[
      _buildStack(),
      _buildCard()
    ],

  );
}
