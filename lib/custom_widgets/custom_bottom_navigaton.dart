import 'package:flutter/material.dart';

class AppNavigationBar extends StatefulWidget {
  final List<Widget> screens;
  final List<NavigationDestination> destinations;

  const AppNavigationBar({
    super.key,
    required this.screens,
    required this.destinations,
  });

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  late int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: widget.screens,
      ),
      bottomNavigationBar: _buildNavigationBar(),
    );
  }

  Widget _buildNavigationBar() {
    return NavigationBar(
      selectedIndex: _currentIndex,
      onDestinationSelected: (index) => setState(() => _currentIndex = index),
      destinations: widget.destinations,
      animationDuration: const Duration(milliseconds: 300),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
    );
  }
}

// Usage example:


// Placeholder screens




