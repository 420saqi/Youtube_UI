import 'package:flutter/material.dart';
import 'package:youtube/appbar_icons/cast_alert_dialog.dart';
import 'package:youtube/appbar_icons/profile_section/model_bottom_sheet_for_profile.dart';
import 'package:youtube/appbar_icons/notifications.dart';
import 'package:youtube/appbar_icons/search_section.dart';

PreferredSizeWidget? showTopAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Row(
      children: [
        Image.asset(
          'assets/images/youtube_logo.png',
          width: 25,
        ),
        const SizedBox(
          width: 5,
        ),
         Text(
          'YouTube',
          style: Theme.of(context).textTheme.titleLarge
        ),
      ],
    ),
    actions: [
      const CastIconOnAppBar(),

      // Notification Section
      IconButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NotificationSection(),
              ));
        },
        icon:  Icon(
          Icons.notifications_none,
          color: Theme.of(context).iconTheme.color,
        ),
      ),

      // search section
      IconButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchSection(),
              ));
        },
        icon:  Icon(
          Icons.search,
          color: Theme.of(context).iconTheme.color,
        ),
      ),

      // profile section
      const ProfileModelBottomSheet(),
    ],
  );
}
