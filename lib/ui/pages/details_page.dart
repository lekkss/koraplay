import 'package:flutter/material.dart';
import 'package:koraplay/models/doctor_model.dart';
import 'package:koraplay/ui/shared/app_colors.dart';
import 'package:koraplay/ui/shared/ui_helpers.dart';
import 'package:koraplay/ui/widget/app_large_text.dart';
import 'package:koraplay/ui/widget/app_text.dart';
import 'package:koraplay/ui/widget/calender.dart';
import 'package:koraplay/ui/widget/responsive_button.dart';
import 'dart:math' as math;

class DetailsPage extends StatelessWidget {
  static const routName = '/detailsPage';

  const DetailsPage({Key? key, required this.data}) : super(key: key);
  final DoctorItem data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(100)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: secondaryColor.withOpacity(0.2),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                horizontalSpaceMedium,
                                horizontalSpaceMedium,
                                horizontalSpaceMedium,
                                horizontalSpaceMedium,
                                const Align(
                                  alignment: Alignment.center,
                                  child: AppText(
                                    text: "Details",
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                            verticalSpaceMedium,
                            AppLargeText(
                              text: data.name,
                              color: Colors.white,
                            ),
                            verticalSpaceSmall,
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: secondaryColor.withOpacity(0.2),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                horizontalSpaceSmall,
                                AppText(
                                  text: data.occupation,
                                  color: Colors.white,
                                ),
                                horizontalSpaceSmall,
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                horizontalSpaceSmall,
                                AppText(
                                  text: data.rating.toString(),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            verticalSpaceMedium,
                            const AppText(
                              text: "Visiting hour",
                              color: Colors.white,
                              size: 14,
                            ),
                            verticalSpaceSmall,
                            AppText(
                              text: data.time,
                              color: Colors.white,
                              size: 17,
                            ),
                            verticalSpaceMedium,
                            const AppText(
                              text: "Total patients",
                              color: Colors.white,
                              size: 14,
                            ),
                            verticalSpaceSmall,
                            const AppText(
                              text: "1200+",
                              color: Colors.white,
                              size: 17,
                            ),
                          ],
                        ),
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: Image.asset(
                            data.image,
                            width: 119,
                            height: 250,
                          ),
                        ),
                      ],
                    ),
                    // Positioned(
                    //   right: 0,
                    //   top: 100,
                    //   child: Transform(
                    //     alignment: Alignment.center,
                    //     transform: Matrix4.rotationY(math.pi),
                    //     child: ClipRRect(
                    //       borderRadius: BorderRadius.only(
                    //         bottomLeft: Radius.circular(100),
                    //       ),
                    //       child: Image.asset(
                    //         data.image,
                    //         height: 250,
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppText(
                      text: "Description",
                      size: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    verticalSpaceSmall,
                    const Text(
                      "A dentist is a medical professional who specialises in dentistry, the diagnosis and treatment of diseases and condition of tooth. This helps to prevent conplications..",
                      style: TextStyle(height: 1.5),
                    ),
                    verticalSpaceSmall,
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AppText(
                              text: "Schedule",
                              fontWeight: FontWeight.bold,
                              size: 20,
                            ),
                            AppText(
                              text: "<June>",
                              color: primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        verticalSpaceSmall,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Calender(
                              day: "Sat",
                              date: 12,
                            ),
                            Calender(
                              day: "Sun",
                              date: 13,
                            ),
                            Calender(
                              day: "Mon",
                              date: 14,
                              isActive: true,
                            ),
                            Calender(
                              day: "Tue",
                              date: 15,
                            ),
                            Calender(
                              day: "Wed",
                              date: 16,
                            ),
                            Calender(
                              day: "sat",
                              date: 17,
                            ),
                            Calender(
                              day: "Thu",
                              date: 18,
                            ),
                          ],
                        )
                      ],
                    ),
                    verticalSpaceSmall,
                    const AppText(
                      text: "Location",
                      size: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    verticalSpaceSmall,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "img/map.png",
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // const Spacer(),
            ResponsiveButton(
              text: "Get Started",
              onPressed: () {},
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ],
        ),
      ),
    );
  }
}
