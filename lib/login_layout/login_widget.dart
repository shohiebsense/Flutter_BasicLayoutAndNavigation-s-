import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  final Color backgroundColor1;
  final Color backgroundColor2;
  final Color highlightColor;
  final Color foregroundColor;
  final AssetImage logo;

  LoginWidget(
      {Key k,
      this.backgroundColor1,
      this.backgroundColor2,
      this.highlightColor,
      this.foregroundColor,
      this.logo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
            child: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                begin: Alignment.centerLeft,
                end: new Alignment(1.0, 0.0),
                colors: [this.backgroundColor1, this.backgroundColor2],
                tileMode: TileMode.repeated),
          ),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 75.0, bottom: 50.0),
                child: Center(
                  child: new Column(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 100.0,
                        child: new CircleAvatar(
                          backgroundColor: Colors.transparent,
                          foregroundColor: this.foregroundColor,
                          radius: 100.0,
                          child: new Text(
                            "S",
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: this.foregroundColor,
                            width: 1.0,
                          ),
                          shape: BoxShape.circle,
                          //image: DecorationImage(image: this.logo)
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: new Text(
                          "Your Name",
                          style: TextStyle(color: this.foregroundColor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 40.0, right: 40.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: this.foregroundColor,
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
                ),
                padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, bottom: 10.0, right: 00.0),
                      child: Icon(
                        Icons.alternate_email,
                        color: this.foregroundColor,
                      ),
                    ),
                    new Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'email',
                          hintStyle: TextStyle(color: this.foregroundColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: this.foregroundColor,
                        width: 0.6,
                        style: BorderStyle.solid),
                  ),
                ),
                padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, bottom: 10.0, right: 00.0),
                      child: Icon(Icons.lock_open, color: this.foregroundColor),
                    ),
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'password',
                          hintStyle: TextStyle(color: this.foregroundColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 40.0, right: 40.0, top: 30.0),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        color: this.highlightColor,
                        onPressed: () => {},
                        child: Text(
                          "Login",
                          style: TextStyle(color: this.foregroundColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20.0),
                          color: Colors.transparent,
                          onPressed: () => {},
                          child: Text(
                            'Forgot your password',
                            style: TextStyle(
                                color: this.foregroundColor.withOpacity(0.5)),
                          )),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Divider(),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 10.0, bottom: 20.0),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        color: Colors.transparent,
                        onPressed: () => {},
                        child: Text(
                          "Don't have an account? Create one",
                          style: TextStyle(
                              color: this.foregroundColor.withOpacity(0.5)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
