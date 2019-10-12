import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'User Input Page'),
    );
  }
}

class PersonData {
  String name = '';
  String symptoms = '';
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;
  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// String _userName, _symptoms;
PersonData person = PersonData();
final _formKey = GlobalKey<FormState>();

  void _save() {
    final FormState form = _formKey.currentState;
    if (!form.validate()) {
      // _autovalidate = true; // Start validating on every change.
      // showInSnackBar('Please fix the errors in red before submitting.');
      print("please write proprt");
    } else {
      form.save();
      print(person.name);
      print(person.symptoms);
    }
  }

  //  String _validateName(String value) {
  //   // _formWasEdited = true;
  //   if (value.isEmpty)
  //     return 'Name is required.';
  //   final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
  //   if (!nameExp.hasMatch(value))
  //     return 'Please enter only alphabetical characters.';
  //   return null;
  // }

  //  String _validateSymptom(String value) {
  //   // _formWasEdited = true;
  //   if (value.isEmpty)
  //     return 'Sympotm is required.';
  //   final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
  //   if (!nameExp.hasMatch(value))
  //     return 'Please enter only alphabetical characters.';
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      // body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        body: Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Form(
              key: _formKey, //refrencing this form 
              // child: Column(
              child: Scrollbar(
                child: SingleChildScrollView( 
                  // dragStartBehavior: DragStartBehavior.down,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name'
                        ),
                        onSaved: (String value) { person.name = value; },
                        // validator: _validateName,
                      ),

                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Symptoms'
                        ),
                        onSaved: (String value) { person.symptoms = value; },
                        // validator: _validateSymptom,
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            onPressed: _save,
                            child: Text('Save'),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                ),
              ),
            ),
          ),
        ));
  }
}
