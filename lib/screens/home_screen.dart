import 'package:flutter/material.dart';
import 'package:pelimov/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  // key es un referencia para poder identificar este widget en el arbol de widgets de manera independiente
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Películas en cines"),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          //TODO: CardSwiper
          CardSwiper()

          //Listado horizontal de peliculas
        ],
      )
    );
  }
}