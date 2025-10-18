import 'dart:io';

import 'package:flutter/material.dart';
import 'package:projeto_3/providers/greate_places.dart';
import 'package:projeto_3/widgets/image_input.dart';
import 'package:provider/provider.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({Key? key}) : super(key: key);

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  final _titleController = TextEditingController();
  File? pickedImage;

  void _selectImage(File pickedImage) {
    pickedImage = pickedImage;
  }

  void _submitForm() {
    // metodo do botão
    if (_titleController.text.isEmpty || pickedImage == null) {
      return;
    }
    Provider.of<GreatePlaces>(
      context,
      listen: false,
    ).addPlace(_titleController.text, pickedImage!);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Lugar'),
        foregroundColor: const Color.fromARGB(255, 52, 2, 61),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            //oculpa o espaço todo da tela
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(labelText: 'Titulo'),
                    ),
                    const SizedBox(height: 10),
                    ImageInput(_selectImage),
                    //SizedBox(height: 10),
                    //LocationInput(this._selectPosition),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.add),
            label: const Text('Adicionar'),

            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              backgroundColor: const Color.fromARGB(255, 67, 5, 78),
              elevation: 0,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: _submitForm,
          ),
        ],
      ),
    );
  }
}
