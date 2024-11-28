import 'package:flutter/material.dart';
import 'package:foodgo/controller/food_controller.dart';
import 'package:foodgo/model/data/food_item.dart';
import 'package:foodgo/view/food_detailes.dart';
import 'package:get/get.dart';

class FoodCard extends StatelessWidget {
    final FoodController controller = Get.put(FoodController());

   FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return             Expanded(
              child: Obx(() => GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                    ),
                    itemCount: controller.burgerList.length,
                    itemBuilder: (context, index) {
                      final foodsitem = foodItems[index];

                      final burger = controller.burgerList[index];
                      return InkWell(
                        onTap: () {
                          Get.to(() => FoodDetails(foodItem:foodsitem));
                        },
                        child: Container(
                          width: 185,
                          height: 225,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child:
                                      Image.asset(burger['image'], height: 80),
                                ), 
                                const SizedBox(height: 8),
                                Text(
                                  burger['name'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  burger['description'],
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.star,
                                            color: Colors.orange, size: 16),
                                        const SizedBox(width: 4),
                                        Text(burger['rating'].toString()),
                                      ],
                                    ),
                                    const Icon(Icons.favorite_border_rounded,
                                        size: 16),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )),
            );
  }
}