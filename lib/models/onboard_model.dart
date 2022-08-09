import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OnboardItems {
  final String title;
  final String description;
  final String imgUrl;

  OnboardItems({
    required this.title,
    required this.description,
    required this.imgUrl,
  });
}

class OnboardItemsModel with ChangeNotifier {
  final List<OnboardItems> _items = [
    OnboardItems(
      title: "Perfect Healthcare Solution",
      description:
          "Find a specialist that you only need on a consultation application.",
      imgUrl: "img/one.png",
    ),
    OnboardItems(
      title: "Perfect Healthcare Solution",
      description:
          "Find a specialist that you only need on a consultation application.",
      imgUrl: "img/one.png",
    ),
    OnboardItems(
      title: "Perfect Healthcare Solution",
      description:
          "Find a specialist that you only need on a consultation application.",
      imgUrl: "img/one.png",
    ),
  ];

  List<OnboardItems> get items => _items;
}
