import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // key es un referencia para poder identificar este widget en el arbol de widgets de manera independiente
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}