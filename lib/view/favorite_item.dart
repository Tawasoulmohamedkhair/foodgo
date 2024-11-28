import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavouriteFood extends StatelessWidget {
  const FavouriteFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Food'),
      ),
      body: Center(child: Text('Favourite Food')),
    );
  }
}