import 'package:code/pages/calls_screen.dart';
import 'package:code/pages/camera_screen.dart';
import 'package:code/pages/chats_screen.dart';
import 'package:code/pages/status_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "WhatsApp",
        theme: ThemeData(
            primaryColor: new Color(0xff070D54),
            accentColor: new Color(0xff355d366)),
        debugShowCheckedModeBanner: false,
        home: new WhatsApphome(),);
  }
}

class WhatsApphome extends StatefulWidget {
  @override
  _WhatsApphomeState createState() => _WhatsApphomeState();
}

class _WhatsApphomeState extends State<WhatsApphome>
    with SingleTickerProviderStateMixin {
  TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(00000),
      appBar: new AppBar(
        title: (Image.asset('assets/b1.png')),
        elevation: .80,
        bottom: new TabBar(
          controller: _tabcontroller,
          indicatorColor: Colors.white12,
          tabs: <Widget>[
            new Tab(
                icon: new Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "GOTHAM",
            ),
            Tab(
              text: "POLICE",
            ),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Icon(Icons.more_vert),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
          )
        ],
      ),
      body: new TabBarView(
        controller: _tabcontroller,
        children: <Widget>[
          new Camerascreen(),
          new Chatsscreen(),
          new Statusscreen(),
          new Callsscreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Image.asset('assets/b2.png'),
        onPressed: () => print("open chats"),
      ),
    );
  }
}
