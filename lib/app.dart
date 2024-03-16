import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/feature/home/home_screen.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pokemon-app',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
