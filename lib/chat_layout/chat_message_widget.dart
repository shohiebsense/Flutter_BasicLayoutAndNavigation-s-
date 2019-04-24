import 'package:flutter/material.dart';

class ChatMessageWidget extends StatelessWidget{
  ChatMessageWidget({this.text, this.animationController});
  final String text;
  final AnimationController animationController;

  final String _name = "Your name";

  @override
  Widget build(BuildContext context) {
    return getSizeTransition(context);
  }

  SizeTransition getSizeTransition(BuildContext context){
    return SizeTransition(
      sizeFactor: CurvedAnimation(
          parent: animationController, curve: Curves.easeOut),
      axisAlignment: 0.0,
      child: getContainer(context),
    );
  }

  Container getContainer(BuildContext context){
    return new Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: CircleAvatar(child: Text(_name[0])),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(_name, style: Theme.of(context).textTheme.subhead),
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Text(text)
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}