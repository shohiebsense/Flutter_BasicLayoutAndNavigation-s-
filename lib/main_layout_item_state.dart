import 'package:flutter/material.dart';
import 'package:flutter_layouts/chat_layout/chat_state_widget.dart';
import 'package:flutter_layouts/grid_layout_2/grid_page.dart';
import 'package:flutter_layouts/login_layout/login_widget.dart';
import 'package:flutter_layouts/login_layout_2/login_widget_2.dart';
import 'package:flutter_layouts/main_layout_item.dart';
import 'package:flutter_layouts/first_next_layout/page_two.dart';
import 'package:flutter_layouts/returning_data/returning_data_screen.dart';
import 'package:flutter_layouts/second_next_layout/first_route.dart';
import 'package:flutter_layouts/sized_box_layout/sized_box_sample.dart';

import 'grid_layout/grid_widget.dart';
import 'login_layout_3/LoginLayoutState.dart';

class LayoutItemsState extends State<LayoutItem> {
  final _layoutNames = <String>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  void initState() {
    _layoutNames.add("Shohieb");
    _layoutNames.add("Ahmad");
    _layoutNames.add("Nasruddin");
    _layoutNames.add("Returning Data (On Actv Result)");
    _layoutNames.add("Chat Layout");
    _layoutNames.add("Login Layout");
    _layoutNames.add("Login Layout 2");
    _layoutNames.add("Login Layout 3");
    _layoutNames.add("Grid Layout");
    _layoutNames.add("Grid Layout 2");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layouts'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: _onClickedIcon,
          ),
        ],
      ),
      body: _populateLayouString(),
    );
  }

  void _onClickedIcon() {}

/*
Widget _populateLayoutStrings(){
  return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i){
        if(i.isOdd) return Divider();
        return _buildRow(,i)
      });
}*/

  void navigate(int position) {
    switch (position) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return PageTwo();
        }));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return FirstRoute();
        }));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
              return SizedBoxSampleWidget();
        }));
        break;
      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context){
              return ReturningDataScreen();
        }));
        break;
      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context){
              return ChatStateWidget();
        }));
        break;
      case 5:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context){
            return LoginWidget(
              backgroundColor1: Color(0xFF444152),
              backgroundColor2: Color(0xFF6f6c7d),
              highlightColor: Color(0xfff65aa3),
              foregroundColor: Colors.white,
              logo: new AssetImage("assets/images/full-bloom.png"),);
        }));
        break;
      case 6:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context){
              return LoginWidget2();
        }));
        break;
      case 7:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context){
              return LoginPage();
        }));
        break;
      case 8:
        Navigator.of(context)
            .push(MaterialPageRoute(builder:(BuildContext context){
            return GridWidget();
        }));
        break;
      case 9:
        Navigator.of(context)
            .push(MaterialPageRoute(builder:(BuildContext context){
          return GridPage();
        }));
        break;
    }
  }

  Widget _populateLayouString() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2;
        return _buildRow(_layoutNames[index], index);
      },
      itemCount: _layoutNames.length * 2,
    );
  }

  Widget _buildRow(String pair, int index) {
    return ListTile(
      title: Text(
        pair,
        style: _biggerFont,
      ),
      trailing: new Icon(
        Icons.favorite_border,
        color: Colors.red,
      ),
      onTap: () {
        navigate(index);
      },
    );
  }
}
