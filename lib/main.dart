
import 'package:flutter/material.dart';
import 'package:pelimov/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pelimov',
      initialRoute: 'home',
      routes: {
        'home':   ( _ ) => const HomeScreen(),
        'details':( _ ) => const DetailsScreen(),
      },
      // copyWith() me permite hacer una copia del tema light y esceptuando las modificaciones que iran añadiendo
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.green[800]
        )
      ),
    );
  }
}