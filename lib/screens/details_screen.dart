import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  // key es un referencia para poder identificar este widget en el arbol de widgets de manera independiente
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text('Details Screen'),
        ),
      ),
    );
  }
}