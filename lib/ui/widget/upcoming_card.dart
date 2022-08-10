import 'package:flutter/material.dart';
import 'package:koraplay/ui/shared/app_colors.dart';
import 'package:koraplay/ui/shared/ui_helpers.dart';

class UncomingCard extends StatelessWidget {
  const UncomingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: secondaryColor,
                    ),
                    horizontalSpaceSmall,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Dr. Rohul, Alom",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        verticalSpaceTiny,
                        Text(
                          "Tooth Specialist",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            verticalSpaceMedium,
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: secondaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                        horizontalSpaceTiny,
                        Text(
                          "sept 18, 2022",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                horizontalSpaceMedium,
                Container(
                  decoration: BoxDecoration(
                    color: secondaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.timelapse_outlined,
                          color: Colors.white,
                        ),
                        horizontalSpaceTiny,
                        Text(
                          "(11am - 03pm)",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            verticalSpaceSmall
          ],
        ),
      ),
    );
  }
}
