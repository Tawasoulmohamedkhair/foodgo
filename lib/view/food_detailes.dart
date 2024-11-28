import 'package:flutter/material.dart';
import 'package:foodgo/controller/food_item_controller.dart';
import 'package:foodgo/model/food_item_model.dart';
import 'package:foodgo/theme/appcolor.dart';
import 'package:foodgo/view/component/appbar.dart';
import 'package:foodgo/view/home_screen.dart';
import 'package:foodgo/widget/portion_spicy.dart';
import 'package:get/get.dart';

class FoodDetails extends StatelessWidget {
  final FoodItem foodItem;
  final FoodItemController controller = Get.put(FoodItemController());

  FoodDetails({super.key, required this.foodItem});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            AppbarIcon(
              Icons.search,
              () {},
              icon: Icons.arrow_back,
              onPressed: () {
                Get.off(HomeScreen());
              },
            ),
            // Product Image
            Center(
                child: Image.asset(foodItem.imageUrl, width: 350, height: 356)),
            const SizedBox(height: 20),
            Text(
              foodItem.name.toString(),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.star, color: Appcolor.yellowcolor),
                Text('${foodItem.preparationTime} mins'),
              ],
            ),
            const SizedBox(height: 20),
            Text(foodItem.description.toString()),
            const SizedBox(height: 20),
            PortionAndSpicy(foodItemIndex: foodItem.id),
            SizedBox(
              height: 40,
            ),
            // Price and Order Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 107,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Appcolor.redcolor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text("\$${foodItem.price.toString()}",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Appcolor.blackcolor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: InkWell(
                    onTap: () {
                      // Handle order logic
                    },
                    child: const Center(
                      child: Text(
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          'ORDER NOW'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
