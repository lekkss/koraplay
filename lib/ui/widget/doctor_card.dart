import 'package:flutter/material.dart';
import 'package:koraplay/ui/shared/app_colors.dart';
import 'package:koraplay/ui/shared/ui_helpers.dart';
import 'package:koraplay/ui/widget/app_text.dart';

class DoctorCard extends StatelessWidget {
  final String id;
  final String occupation;
  final String image;
  final String name;
  final double rating;
  final String time;
  const DoctorCard(
      {Key? key,
      required this.id,
      required this.occupation,
      required this.image,
      required this.name,
      required this.rating,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              height: 75,
              width: 75,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            horizontalSpaceSmall,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: name,
                  fontWeight: FontWeight.bold,
                ),
                verticalSpaceTiny,
                AppText(
                  text: occupation,
                  size: 15,
                  color: Colors.grey,
                ),
                verticalSpaceTiny,
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(rating.toString()),
                    horizontalSpaceSmall,
                    const Icon(Icons.lock_clock),
                    Text(time),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
