import 'package:flutter/material.dart';
import 'package:code/models/chat_models.dart';

class Chatsscreen extends StatefulWidget {
  @override
  _ChatsscreenState createState() => _ChatsscreenState();
}

class _ChatsscreenState extends State<Chatsscreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.blue,
                  backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[i].name,
                      style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    new Text(
                      dummyData[i].time,
                      style: new TextStyle(color: Colors.cyan, fontSize: 14),
                    )
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 10.0),
                  
                  child: new Text(dummyData[i].message,
                      style: new TextStyle(color: Colors.cyan, fontSize: 20)),
                ),
              )
            ],
          ),
    );
  }
}
