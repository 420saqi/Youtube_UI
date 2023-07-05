
import 'package:flutter/material.dart';
import 'package:youtube/appbar_icons/cast_alert_dialog.dart';

PreferredSizeWidget? showTopAppBar(BuildContext context){
  return AppBar(
    title: Row(
      children: [
        Image.asset(
          'assets/images/youtube_logo.png',
          width: 25,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          'YouTube',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    actions: [
      const CastIconOnAppBar(),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications_none,),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search,),
      ),
      TextButton(
        onPressed: (){},
        child: ClipOval(
          child: Image.asset(
            'assets/images/account_info.jpg',
            width: 30,
            height: 30,
          ),
        ),
      ),
    ],
  );
}

