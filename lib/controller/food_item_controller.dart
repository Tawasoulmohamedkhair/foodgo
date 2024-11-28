
import 'package:get/get.dart';

class FoodItemController extends GetxController {
  var spiceLevel = 0.5.obs; // Default spice level
  var quantity = 1.obs; // Default quantity

  // Method to update spice level
  void updateSpiceLevel(double newLevel) {
    spiceLevel.value = newLevel;
  }

  // Method to increment quantity
  void incrementQuantity() {
    quantity.value++;
  }

  // Method to decrement quantity
  void decrementQuantity() {
    if (quantity.value > 1) {
      quantity.value--;
    }
  }
}
