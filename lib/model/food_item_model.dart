
import 'package:json_annotation/json_annotation.dart';

part 'food_item_model.g.dart'; 

@JsonSerializable()
class FoodItem {
    final int id; 

  final String name;
     final String preparationTime;

  final String description;
  final String imageUrl;
  final double price;
  final int quantity;
  final double spiceLevel;

  FoodItem({
    required this.id,
    required this.name,
    required this.preparationTime,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.quantity = 1,
    this.spiceLevel = 0.5,
  });

  factory FoodItem.fromJson(Map<String, dynamic> json) =>
      _$FoodItemFromJson(json);
  Map<String, dynamic> toJson() =>
      _$FoodItemToJson(this); // This line is crucial
}
