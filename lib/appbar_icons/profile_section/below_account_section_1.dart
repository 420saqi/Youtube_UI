import 'package:flutter/material.dart';

class BelowAccountSectionPartOne extends StatelessWidget {
  const BelowAccountSectionPartOne({super.key});

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
              icon: Icon(Icons.monetization_on_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
              label:  Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text('Purchases and memberships',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: (){},
              icon: Icon(Icons.analytics_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
              label:  Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text('Time watched',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: (){},
              icon: Icon(Icons.safety_check_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
              label:  Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text('Your data in YouTube',
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
