import 'package:flutter/material.dart';

class Category {
  final String id;
  final IconData icon;
  final String title;

  Category({
    required this.id,
    required this.title,
    required this.icon,
  });
}

class CategoryModel with ChangeNotifier {
  final List<Category> _items = [
    Category(
      icon: (Icons.favorite),
      id: "01",
      title: "Dentist",
    ),
    Category(
      icon: (Icons.favorite),
      id: "02",
      title: "Heart Surgeon",
    ),
    Category(
      icon: (Icons.favorite),
      id: "03",
      title: "Bone Surgeon",
    ),
  ];

  List<Category> get items => _items;
}
