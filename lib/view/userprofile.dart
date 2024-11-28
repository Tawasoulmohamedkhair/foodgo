import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Userprofile extends StatelessWidget {
  const Userprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: Center(child: Text('User Profile')),
    );
  }
}