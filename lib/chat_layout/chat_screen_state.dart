import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layouts/chat_layout/chat_message_widget.dart';
import 'package:flutter_layouts/chat_layout/chat_state_widget.dart';

class ChatScreenState extends State<ChatStateWidget>
    with TickerProviderStateMixin {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessageWidget> _messages = <ChatMessageWidget>[];
  bool _isComposing = false;
  bool _isIos = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _isIos = Theme.of(context).platform == TargetPlatform.iOS;
    return Scaffold(
      appBar: AppBar(
        title: Text("Friendly Chat"),
        elevation: _isIos ? 0.0 : 4.0,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return Container(
      child: new Column(
        children: <Widget>[
          new Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          Divider(
            height: 1.0,
          ),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
          ),
        ],
      ),
        decoration: Theme.of(context).platform == TargetPlatform.iOS //new
            ? new BoxDecoration(                                     //new
          border: new Border(                                  //new
            top: new BorderSide(color: Colors.grey[200]),      //new
          ),                                                   //new
        )                                                      //new
            : null,                                                 //modified
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _isComposing = false;
    });
    if (text.isEmpty) return;
    ChatMessageWidget message = new ChatMessageWidget(
      text: text,
      animationController: AnimationController(
        duration: Duration(milliseconds: 500),
        vsync: this,
      ),
    );
    setState(() {
      _messages.insert(0, message);
    });
    message.animationController.forward();
  }

  Widget _buildTextComposer() {
    return new IconTheme(
        data: IconThemeData(color: Theme.of(context).accentColor),
        child: _getContainer());
  }

  StatelessWidget _getContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _textController,
              onChanged: (String text) {
                setState(() {
                  _isComposing = text.isNotEmpty;
                });
              },
              onSubmitted: _handleSubmitted,
              decoration:
                  new InputDecoration.collapsed(hintText: "Send a message"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            child: _isIos
                ? CupertinoButton(
                    child: new Text("Send"),
                    onPressed: _isComposing
                        ? () => _handleSubmitted(_textController.text)
                        : null,
                  )
                : IconButton(
                    icon: Icon(Icons.send),
                    onPressed: _isComposing
                        ? () => _handleSubmitted(_textController.text)
                        : null,
                  ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    for (ChatMessageWidget message in _messages) {
      message.animationController.dispose();
    }
    super.dispose();
  }
}
