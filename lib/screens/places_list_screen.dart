import 'package:flutter/material.dart';
import 'package:projeto_3/utils/app_routes.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Lugares'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {Navigator.of(context).pushNamed(AppRoutes.placeForm);},
          )
        ],
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}