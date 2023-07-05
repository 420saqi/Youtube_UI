import 'package:flutter/material.dart';
import 'package:youtube/appbar.dart';
import 'package:youtube/bottom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showTopAppBar(context),
      body: const Text('No Content Yet',style: TextStyle(
        fontSize: 40,fontWeight: FontWeight.bold
      ),),
      bottomNavigationBar:const BottomAppBarNavigation(),

    );
  }
}
