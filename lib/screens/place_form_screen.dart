import 'package:flutter/material.dart';
import 'package:projeto_3/widgets/image_input.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({Key? key}) : super(key: key);

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  final _titleController = TextEditingController();

  void _submitForm() {} // metodo do botão

  // File _pickedImage;
  // LatLng _pickedPosition;

  // void _selectImage(File _pickedImage){
  //   setState(() {
  //     _pickedImage = _pickedImage;

  //   });
  // }
  // void _selectPosition(LatLng position) {
  //   setState(() {
  //     _pickedPosition = position;
  //   });
  // }

  // bool _isValidForm() {
  //   return _titleController.text.isNotEmpty &&
  //   _pickedImage !=null &&-
  //   _pickedPosition != null;
  // }
  // void _submitForm(){
  //   if (! _isValidForm()) return;

  //   Provider.of<GreatPlaces>(context, listen: false). addPlace(
  //     _titleController.text,
  //     _pickedImage,
  //     _pickedPosition,
  //   );

  //   Navigator.of(context).pop();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Novo Lugar'), foregroundColor: const Color.fromARGB(255, 52, 2, 61)),
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
                    const ImageInput(),
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
              backgroundColor:const Color.fromARGB(255, 67, 5, 78),
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
