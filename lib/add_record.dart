import 'package:flutter/material.dart';

class AddRecord extends StatelessWidget {
  AddRecord({Key key, this.title}) : super(key: key);
  final String title;
  final formKey = GlobalKey<FormState>();
  String name, symptoms;

  @override
  Widget build(BuildContext context) {
        return Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Name:'
                    ),
                    onSaved: (input) => name = input,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Symtoms:'
                    ),
                    onSaved: (input) => symptoms = input,
                    obscureText: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: _submit,
                          child: Text('Save'),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        // )
        );
  }

  void _submit(){
    if(formKey.currentState.validate()){
      formKey.currentState.save();
      print(name);
      print(symptoms);
    }
  }
}