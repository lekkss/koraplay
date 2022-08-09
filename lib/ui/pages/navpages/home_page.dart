import 'package:flutter/material.dart';
import 'package:koraplay/ui/shared/app_colors.dart';
import 'package:koraplay/ui/shared/ui_helpers.dart';
import 'package:koraplay/ui/widget/doctor_card.dart';
import 'package:koraplay/ui/widget/header.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<int> items = List<int>.generate(2, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: primaryColor,
                    ),
                    horizontalSpaceSmall,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("welcome"),
                        Text("lekkss"),
                      ],
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: secondaryColor),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.menu),
                  ),
                )
              ],
            ),
            verticalSpaceLarge,
            const Header(text: "UpComing Appointments"),
            verticalSpaceLarge,
            const Header(text: "Category"),
            verticalSpaceLarge,
            const Header(text: "Top Rated Doctors"),
            DoctorCard(),
            Container(
              height: 200,
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                        background: Icon(Icons.message),
                        key: ValueKey<int>(items[index]),
                        child: const DoctorCard());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
