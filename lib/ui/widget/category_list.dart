import 'package:flutter/material.dart';
import 'package:koraplay/models/category_model.dart';
import 'package:koraplay/ui/shared/app_colors.dart';
import 'package:koraplay/ui/shared/ui_helpers.dart';
import 'package:provider/provider.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryData = Provider.of<CategoryModal>(context, listen: false);
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryData.items.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(categoryData.items[index].icon),
                        horizontalSpaceSmall,
                        Text(categoryData.items[index].title)
                      ],
                    ),
                  ),
                ),
                horizontalSpaceSmall
              ],
            );
          }),
    );
  }
}
