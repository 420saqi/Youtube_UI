
import 'package:flutter/material.dart';
import 'package:youtube/appbar_icons/cast_alert_dialog.dart';
import 'package:youtube/notifications.dart';
import 'package:youtube/search_section.dart';

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
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => const NotificationSection(),));
        },
        icon: const Icon(Icons.notifications_none,),
      ),

      IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => SearchSection(),));
        },
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

