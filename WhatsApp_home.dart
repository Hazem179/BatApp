import 'package:flutter/material.dart';

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
      appBar: new AppBar(
        title: new Text("whatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabcontroller,
          indicatorColor: Colors.white12,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Asking for Help",
            ),
            Tab(
              text: "Gotham",
            ),
            Tab(
              text: "Asking for Help",
            ),
          ],
        ),
      ),
      body: new Container(
        
      ),
    );
  }
}
