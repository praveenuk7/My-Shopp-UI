import 'package:flutter/material.dart';
import 'package:marvel_app/model/trending.dart';
import 'package:get/get.dart';

class TrendingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: trending.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 150,
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: GestureDetector(
              onTap: () {
                Get.snackbar('Updating', 'will be soon available');
              },
              child: Card(
                color: Colors.white,
                elevation: 10,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        trending[i]['IconPath'],
                        height: 80,
                        width: 80,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              trending[i]['name'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                            Text(trending[i]['weight']),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  trending[i]['price'],
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.add_circle,
                                  color: Colors.green,
                                  size: 25,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          );
        });
  }
}
