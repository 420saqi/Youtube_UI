import 'package:flutter/material.dart';
import 'package:youtube/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final myList= [
    const Center(child: Text('Home Screen',style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),),),
    const Center(child: Text('Shorts Screen',style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),),),
    const Center(child: Text('Upload Screen',style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),),),
    const Center(child: Text('Subscriptions Screen',style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),),),
    const Center(child: Text('Downloads Screen',style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),),),
  ];

  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showTopAppBar(context),
      body: _currentIndex>4 ?const Text('') : myList[_currentIndex],
      bottomNavigationBar:BottomNavigationBar(
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
      ),

    );
  }
}
