import 'package:get/get.dart';

class FoodController extends GetxController {
  // Observable variables
  var selectedCategory = 'All'.obs;
  var burgerList = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    // Initial burger data
    burgerList.value = [
      {
        'name': 'Cheeseburger',
        'description': "Wendy's Burger",
        'rating': 4.9,
        'image': 'assets/images/1.png',
      },
      {
        'name': 'Hamburger',
        'description': 'Veggie Burger',
        'rating': 4.8,
        'image': 'assets/images/2.png',
      },
      {
        'name': 'Hamburger',
        'description': 'Chicken Burger',
        'rating': 4.6,
        'image': 'assets/images/3.png',
      },
      {
        'name': 'Hamburger',
        'description': 'Fried Chicken Burger',
        'rating': 4.5,
        'image': 'assets/images/4.png',
      },
    ];
    super.onInit();
  }

  // Method to update selected category
  void selectCategory(String category) {
    selectedCategory.value = category;
  }
}
