import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message'),
      ),
      body: Center(child: Text('Message')),
    );
  }
}