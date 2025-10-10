import 'package:flutter/material.dart';
import 'package:projeto_3/models/place.dart';

class GreatePlaces with ChangeNotifier {
  
  final List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length; // os itens virão para este trecho
  }

  Place itemByIndex(int index) {
    return _items[index]; //os dados retorna pelo id
  }
}
