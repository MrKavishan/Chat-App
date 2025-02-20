import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages',
        style: Theme.of(context).textTheme.titleLarge),
        centerTitle: false,
        backgroundColor: const Color.fromARGB(255, 255, 13, 13),
        elevation: 0,
        toolbarHeight: 70,

      ),
      body: Text('message page'),
    );
  }
}