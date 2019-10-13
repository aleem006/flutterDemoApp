import 'package:demo/add_record.dart';
import 'package:demo/records.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 2);
    _tabController.addListener(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return new  Scaffold(
      appBar: new AppBar(
        title: Text("Demo App"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(text: "Records"),
            Tab(text: "Add Record"),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new RecordsScreen(),
          new AddRecord(),
        ],
      ),
    );
  }
   
}
