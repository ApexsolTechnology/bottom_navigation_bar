import 'package:flutter/material.dart';
import 'package:flutter_custom_widgets/custom_widgets/custom_bottom_navigaton.dart';

import 'view/ExploreScreen/explore_screen.dart';
import 'view/HomeScreen/home_screen.dart';
import 'view/ProfileScreen/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MainScreen());
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppNavigationBar(
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.explore_outlined),
          selectedIcon: Icon(Icons.explore),
          label: 'Explore',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_outlined),
          selectedIcon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      screens: [
        HomeScreen(),
        ExploreScreen(),
        ProfileScreen(),
      ],
    );
  }
}
