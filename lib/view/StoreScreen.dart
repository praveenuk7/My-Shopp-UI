import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/model/catogery.dart';
import 'package:marvel_app/widgets/BottomNavBar.dart';
import 'package:marvel_app/widgets/CatogoryList.dart';
import 'package:marvel_app/widgets/TrendingList.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  Widget sectionNameRow({String head, String tail}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          head,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            tail,
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.menu),
        title: Text('My Shopp'),
        actions: [
          Icon(Icons.notifications_none),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.add_shopping_cart),
          )
        ],
      ),
      body: Container(
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned.fill(
                child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.deepPurple,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 30),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('images/myshop.png'),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'Myy Shop',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Texhnopark Kazhakootam',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '2 kms . 1 Hour Delivery . ',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.orangeAccent,
                                  ),
                                  Text(
                                    ' 4.5',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          sectionNameRow(
                              head: 'Explore by Category', tail: 'View All'),
                          Container(height: 120, child: CategoryList()),
                          SizedBox(
                            height: 10,
                          ),
                          sectionNameRow(
                              head: 'Trending Products', tail: 'View All'),
                          Container(height: 200, child: TrendingList()),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
            Positioned(
              top: 160,
              right: 25,
              left: 25,
              child: GestureDetector(
                onTap: () {
                  Get.snackbar(
                    'Search Bar',
                    'Updating Soon',
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  height: 56,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: shadowList
//
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Icon(
                          Icons.search,
                          color: Colors.deepPurple,
                          size: 30,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Search...',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Icon(
                          Icons.qr_code,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
