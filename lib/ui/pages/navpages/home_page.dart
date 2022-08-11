import 'package:flutter/material.dart';
import 'package:koraplay/models/doctor_model.dart';
import 'package:koraplay/ui/pages/details_page.dart';
import 'package:koraplay/ui/shared/app_colors.dart';
import 'package:koraplay/ui/shared/ui_helpers.dart';
import 'package:koraplay/ui/widget/category_list.dart';
import 'package:koraplay/ui/widget/doctor_card.dart';
import 'package:koraplay/ui/widget/header.dart';
import 'package:koraplay/ui/widget/input.dart';
import 'package:koraplay/ui/widget/upcoming_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<int> items = List<int>.generate(2, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final doctorData = Provider.of<DoctorModel>(context, listen: false);

    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 18, right: 18, bottom: 20, top: 50),
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
                        Text("welcome back"),
                        Text(
                          "lekkss",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
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
            verticalSpaceSmall,
            const UncomingCard(),
            verticalSpaceSmall,
            Row(
              children: [
                const Expanded(
                    flex: 5,
                    child: Input(
                      hintText: "Search...",
                      borderRadius: 10,
                      filled: true,
                      fillColor: secondaryColor,
                      prefixIcon: Icon(Icons.search_rounded),
                    )),
                horizontalSpaceMedium,
                Expanded(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.menu),
                    ),
                  ),
                )
              ],
            ),
            verticalSpaceSmall,
            const Header(text: "Category"),
            verticalSpaceSmall,
            const CategoryList(),
            verticalSpaceSmall,
            const Header(text: "Top Rated Doctors"),
            verticalSpaceSmall,
            SizedBox(
              height: 220,
              child: MediaQuery.removePadding(
                removeTop: true,
                removeBottom: true,
                context: context,
                child: ListView.builder(
                    itemCount: doctorData.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      final data = doctorData.items[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (contex) =>
                                      DetailsPage(data: data)));
                          // Navigator.pushReplacementNamed(
                          //     context, '/detailsPage');
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Dismissible(
                              confirmDismiss: (direction) async {
                                return null;
                              },
                              background: Container(
                                color: Colors.blue,
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.favorite, color: Colors.white),
                                      Text(
                                        'Move to favorites',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              secondaryBackground: Container(
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(Icons.message_sharp,
                                          color: Colors.white),
                                    ],
                                  ),
                                ),
                              ),
                              key: ValueKey<String>(data.id),
                              child: DoctorCard(
                                time: data.time,
                                name: data.name,
                                id: data.id,
                                image: data.image,
                                occupation: data.occupation,
                                rating: data.rating,
                              )),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
