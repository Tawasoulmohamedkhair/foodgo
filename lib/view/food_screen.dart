import 'package:flutter/material.dart';
import 'package:foodgo/controller/food_controller.dart';
import 'package:foodgo/widget/content.dart';
import 'package:foodgo/widget/food_card.dart';
import 'package:foodgo/widget/home_appbar.dart';
import 'package:foodgo/widget/search_textfield.dart';
import 'package:get/get.dart';

class FoodScreen extends StatelessWidget {
  final FoodController controller = Get.put(FoodController());

 FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
          padding: const EdgeInsets.only( top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Home Appbar
              const HomeAppbar(),
              const SizedBox(height: 16),
      
              // Search bar
              const SearchTextfield(),
              const SizedBox(height: 16),
      
              // Category Buttons
              Content(),
      
              const SizedBox(height: 30),
      
              // Burger Grid
                  Container(
                    child: FoodCard()),
                 
            ],
          ),
        ),
    );
      
    
  }
}
