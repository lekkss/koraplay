import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koraplay/ui/shared/app_colors.dart';
import 'package:koraplay/ui/shared/ui_helpers.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              height: 60,
              width: 60,
              child: Image.asset("img/one.png"),
            ),
            horizontalSpaceSmall,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Dr. Ronald Richard"),
                const Text("Dental/Specialist"),
                Row(
                  children: const [
                    Icon(Icons.star),
                    Text("4.3"),
                    Text("4.3"),
                    Icon(Icons.lock_clock),
                    Text("11am - 03pm"),
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
