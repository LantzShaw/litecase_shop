import 'package:flutter/material.dart';

void main() {
  runApp(const LisecaseShopApp());
}

class LisecaseShopApp extends StatelessWidget {
  const LisecaseShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Text(
        'hello world!',
      ),
    );
  }
}
