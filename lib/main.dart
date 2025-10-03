import 'package:flutter/material.dart';
import 'package:projeto_3/screens/place_form_screen.dart';
import 'package:projeto_3/screens/places_list_screen.dart';
import 'package:projeto_3/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lugares',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        hintColor: Colors.amber,
        visualDensity: VisualDensity
            .adaptivePlatformDensity, //Deixa a aplicação responsiva.
      ),
      home: PlacesListScreen(),
      routes: {
        AppRoutes.placeForm: (ctx) => const PlaceFormScreen(),},
    );
  }
}
