import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  Widget bottomNavButton(
      {Color color,
      IconData icon,
      Color iconColor,
      String text,
      Color textColor}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Get.snackbar('Alert!!', 'Button is not functional now');
        },
        child: Container(
          height: 70,
          color: color,
          width: 100,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: iconColor,
                ),
                Text(
                  text,
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.grey[200],
      child: Row(
        children: [
          bottomNavButton(icon: Icons.home, text: 'HOME'),
          bottomNavButton(
              color: Colors.white,
              icon: Icons.shopping_bag,
              iconColor: Colors.deepPurple,
              text: 'STORE',
              textColor: Colors.deepPurple),
          bottomNavButton(icon: Icons.favorite_border, text: 'FAVORITES'),
          bottomNavButton(icon: Icons.person, text: 'ACCOUNT')
        ],
      ),
    );
  }
}
