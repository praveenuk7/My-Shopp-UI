import 'package:flutter/material.dart';
import 'package:marvel_app/model/catogery.dart';
import 'package:get/get.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Container(
            child: Column(
//                                  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.snackbar('Updating', 'will be updated soon');
                  },
                  child: Container(
                    height: 80,
                    width: 90,
                    padding: EdgeInsets.only(right: 10, top: 10, bottom: 10),
                    margin: EdgeInsets.only(right: 10, top: 10),
                    decoration: BoxDecoration(
                        color: categories[i]['color'],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: shadowList),
                    child: Image.asset(
                      categories[i]['IconPath'],
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                Text(
                  categories[i]['name'],
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          );
        });
  }
}
