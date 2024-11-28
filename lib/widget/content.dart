import 'package:flutter/material.dart';
import 'package:foodgo/controller/food_controller.dart';
import 'package:foodgo/theme/appcolor.dart';
import 'package:get/get.dart';

class Content extends StatelessWidget {
  final FoodController controller = Get.put(FoodController());
  Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: ['All', 'Combos', 'Sliders', 'Classic']
                  .map((category) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ChoiceChip(
                          checkmarkColor: Colors.white,
                          label: Text(category),
                          selected: controller.selectedCategory.value == category,
                          onSelected: (selected) {
                            controller.selectCategory(category);
                          },
                          selectedColor:Appcolor.redcolor,
                          backgroundColor: Colors.grey[200],
                          labelStyle: TextStyle(
                            color: controller.selectedCategory.value == category
                                ? Colors.white
                                : Appcolor.blackcolor,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ));
  }
}
