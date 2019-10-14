import 'package:demo/person_data.dart';
import 'package:flutter/material.dart';
import 'package:demo/add_record.dart';

class RecordsScreen extends StatefulWidget {
  @override
  _RecordsScreenState createState() => _RecordsScreenState();
}

class _RecordsScreenState extends State<RecordsScreen> {
  // List<PersonData> dummyData = new List<PersonData>(); 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(children: <Widget>[
        new Divider(
          height: 10.0,
        ),
        new ListTile(
          leading: new CircleAvatar(
            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: Colors.grey,
          ),
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(dummyData[i].name, style: new TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(
                    dummyData[i].symptoms,
                    style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
          ),
        )
      ],),
    );
  }
}