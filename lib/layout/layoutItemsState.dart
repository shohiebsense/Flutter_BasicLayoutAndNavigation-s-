import 'package:flutter/material.dart';
import 'package:flutter_layouts/layout/layoutitem.dart';
import 'package:flutter_layouts/page_two.dart';

class LayoutItemsState extends State<LayoutItem>{
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
          IconButton(icon: const Icon(Icons.list), onPressed: _onClickedIcon,),
        ],
      ),
      body: _populateLayouString(),
    );
  }


  void _onClickedIcon(){

  }
/*
Widget _populateLayoutStrings(){
  return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i){
        if(i.isOdd) return Divider();
        return _buildRow(,i)
      });
}*/

void navigateToPageTwo(){
  Navigator.of(context).push(
    MaterialPageRoute<void>(
        builder: (BuildContext context){
          return PageTwo();
        })
  );
}

Widget _populateLayouString(){
  return ListView.builder(
    padding: const EdgeInsets.all(16.0),
    itemBuilder: (context, i){
      if(i.isOdd) return Divider();
      final index = i ~/ 2;
      return _buildRow(_layoutNames[index]);
    },
    itemCount: _layoutNames.length*2,
  );
}

  Widget _buildRow(String pair) {
    return ListTile(
      title: Text(
        pair,
        style: _biggerFont,
      ),
      trailing: new Icon(
        Icons.favorite_border,
        color: Colors.red,
      ),
      onTap:  navigateToPageTwo,
    );
  }

}