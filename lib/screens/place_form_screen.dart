import 'package:flutter/material.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({Key? key}) :super(key: key);

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Lugar'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      labelText: 'Titulo',
                    ),
                  ),
                  SizedBox(height: 10), 
                  ImageInput(this._selectImage),
                  SizedBox(height: 10),
                  LocationInput(this._selectPosition),
                ],
              ),),
          ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text ('Adicionar'),
          color: Theme.of(context).accentColor,
          elevation: 0,
          MaterialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: _isValidForm() ? _submitForm : null,
        )

        ],
      )
    );
  }
}