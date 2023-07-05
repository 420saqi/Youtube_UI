import 'package:flutter/material.dart';

class BottomAppBarNavigation extends StatefulWidget {
  const BottomAppBarNavigation({super.key});

  @override
  State<BottomAppBarNavigation> createState() => _BottomAppBarNavigationState();
}

class _BottomAppBarNavigationState extends State<BottomAppBarNavigation> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          _currentIndex =index;
        });
      },
      currentIndex: _currentIndex,
      iconSize: 30,
      type: BottomNavigationBarType.fixed,
      items:  const<BottomNavigationBarItem> [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            (Icons.home_outlined),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Shorts',
          icon: Icon(
            (Icons.explore_outlined),
          ),

        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            (Icons.add_circle_outline),
          ),

        ),

        BottomNavigationBarItem(
          label: 'Subscriptions',
          icon: Icon(
            (Icons.subscriptions_outlined),
          ),

        ),
        BottomNavigationBarItem(
          label: 'Library',
          icon: Icon(
            (Icons.library_add_outlined),
          ),

        ),

      ],
    );
  }
}
