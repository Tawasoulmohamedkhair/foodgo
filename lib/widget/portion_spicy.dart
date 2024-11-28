import 'package:flutter/material.dart';
import 'package:foodgo/theme/appcolor.dart';
import 'package:get/get.dart';

import 'package:foodgo/controller/food_item_controller.dart';

class PortionAndSpicy extends StatelessWidget {
  final int foodItemIndex; // Use the index to pick the food item

  PortionAndSpicy({
    super.key,
    required this.foodItemIndex,
  });

  final FoodItemController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Spicy'),
              Slider(
                activeColor: Appcolor.redcolor,
                value: controller.spiceLevel.value,
                onChanged: controller.updateSpiceLevel,
                min: 0.0,
                max: 1.0,
                divisions: 10,
                label: "${(controller.spiceLevel.value * 100).toInt()}%",
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Midle"),
                  SizedBox(
                    width: 70,
                  ),
                  Text('Hot'),
                ],
              ),
            ],
          )),
      const SizedBox(height: 10),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Portion'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Appcolor.redcolor),
                child: IconButton(
                  icon: const Icon(color: Colors.white, Icons.remove),
                  onPressed: controller.decrementQuantity,
                ),
              ),
              const SizedBox(width: 10),
              Obx(() => Text(
                    '${controller.quantity.value}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Appcolor.redcolor),
                child: IconButton(
                  icon: const Icon(color: Colors.white, Icons.add),
                  onPressed: controller.incrementQuantity,
                ),
              ),
            ],
          ),
        ],
      )
    ]);
  }
}
