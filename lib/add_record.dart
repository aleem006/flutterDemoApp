import 'package:flutter/material.dart';
import 'person_data.dart';

class AddRecord extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  PersonData personData = new PersonData();

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
                    onSaved: (input) => personData.setName = input,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Symtoms:'
                    ),
                    onSaved: (input) => personData.setSymptoms = input,
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
        );
  }

  void _submit(){
    if(formKey.currentState.validate()){
      formKey.currentState.save();
      print(personData.getName);
      print(personData.getSymptoms);
    }
  }
}