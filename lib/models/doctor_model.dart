import 'package:flutter/material.dart';

class DoctorItem {
  final String id;
  final String occupation;
  final String image;
  final String name;
  final double rating;
  final String time;

  DoctorItem({
    required this.image,
    required this.occupation,
    required this.id,
    required this.name,
    required this.rating,
    required this.time,
  });
}

class DoctorModel with ChangeNotifier {
  final List<DoctorItem> _items = [
    DoctorItem(
      image: "img/avi.png",
      occupation: "Heart Surgeon",
      id: "01",
      name: "Dr. Ronald Richard",
      rating: 4.3,
      time: "11am - 03pm",
    ),
    DoctorItem(
      image: "img/bruno.png",
      id: "02",
      occupation: "Dental Surgeon",
      name: "Dr. DJenny wilson",
      rating: 4.9,
      time: "11am - 03pm",
    ),
  ];

  List<DoctorItem> get items => _items;

  DoctorItem findbyId(String id) {
    return _items.firstWhere((destination) => destination.id == id);
  }
}
