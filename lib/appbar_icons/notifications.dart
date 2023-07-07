import 'package:flutter/material.dart';
import 'package:youtube/appbar_icons/search_section.dart';

import 'cast_alert_dialog.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Notifications',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          const CastIconOnAppBar(),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchSection(),
                  ));
            },
            icon: Icon(
              Icons.search,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text('Settings'),
                ),
                const PopupMenuItem(
                  child: Text('Watch on TV'),
                ),
                const PopupMenuItem(
                  child: Text('Terms & privacy policy'),
                ),
                const PopupMenuItem(
                  child: Text('Help & feedback'),
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.notifications,
            color: Colors.grey.shade400,
            size: 100,
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              'Your notifications live here',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Subscribe to your favorite channels',
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
          Text(
            'to get notified about their latest vi',
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
