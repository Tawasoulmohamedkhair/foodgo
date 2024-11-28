import 'package:flutter/material.dart';
import 'package:foodgo/controller/bottomnavigation_bar.dart';
import 'package:foodgo/controller/food_controller.dart';
import 'package:foodgo/theme/appcolor.dart';
import 'package:foodgo/view/favorite_item.dart';
import 'package:foodgo/view/food_screen.dart';
import 'package:foodgo/view/message_screen.dart';
import 'package:foodgo/view/userprofile.dart';
import 'package:get/get.dart';

class BottomNavigationBars extends StatelessWidget {
      final FoodController controller = Get.put(FoodController());
        final BottomNavController controllers = Get.put(BottomNavController());
        final List<Widget> pages = [
     FoodScreen(),
     Userprofile(),
     MessageScreen(),
    FavouriteFood(),
    
  ];


   BottomNavigationBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Appcolor.redcolor,
        onPressed: () {},
        child: const Icon(color: Colors.white, Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // Bottom Navigation
      bottomNavigationBar: BottomAppBar(
        color: Appcolor.redcolor,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              child: const Column(
                children: [
                  Icon(Icons.home, color: Colors.white),
                  Text('', style: TextStyle(color: Colors.white)),
                ],
              ),
              onPressed: () => controllers.changeTabIndex(0),
            ),
            MaterialButton(
              child: const Column(
                children: [
                  Icon(Icons.person, color: Colors.white),
                  Text('', style: TextStyle(color: Colors.white)),
                ],
              ),
              onPressed: () => controllers.changeTabIndex(1),
            ),
            const SizedBox(width: 40),
            Row(
              children: [
                MaterialButton(
                  child: const Column(
                    children: [
                      Icon(Icons.comment, color: Colors.white),
                      Text('', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  onPressed: () => controllers.changeTabIndex(2),
                ),
              ],
            ),
            MaterialButton(
              child: const Column(
                children: [
                  Icon(Icons.favorite, color: Colors.white),
                  Text('', style: TextStyle(color: Colors.white)),
                ],
              ),
              onPressed: () => controllers.changeTabIndex(3),
            ),
          ],
        ),
      ),
        body: pages[controllers.selectedIndex.value], 

    );
  }
}