// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodItem _$FoodItemFromJson(Map<String, dynamic> json) => FoodItem(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      preparationTime: json['preparationTime'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      spiceLevel: (json['spiceLevel'] as num?)?.toDouble() ?? 0.5,
    );

Map<String, dynamic> _$FoodItemToJson(FoodItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'preparationTime': instance.preparationTime,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
      'quantity': instance.quantity,
      'spiceLevel': instance.spiceLevel,
    };
