import 'package:flutter/material.dart';
import 'package:flutter_layouts/layoutitem.dart';
import 'package:flutter_layouts/first_next_layout/page_two.dart';
import 'package:flutter_layouts/second_next_layout/first_route.dart';
import 'package:flutter_layouts/sized_box_layout/sized_box_sample.dart';

class LayoutItemsState extends State<LayoutItem> {
  final _layoutNames = <String>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  void initState() {
    _layoutNames.add("Shohieb");
    _layoutNames.add("Ahmad");
    _layoutNames.add("Nasruddin");
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
