import 'package:flutter/material.dart';

class BelowAccountPartTwo extends StatelessWidget {
  const BelowAccountPartTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 2.0,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            TextButton.icon(
              onPressed: (){},
              icon:  Icon(Icons.settings_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
              label:  Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text('Settings',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: (){},
              icon:  Icon(Icons.help_outline_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
              label:  Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text('Help & feedback',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
