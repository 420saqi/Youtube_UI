import 'package:flutter/material.dart';

class ProfileAccountSection extends StatelessWidget {
  const ProfileAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Icon(Icons.person_2_rounded),
            title:  Text(' Name Here'),
            subtitle: Text('123anonymouse@gmail.com'),
            trailing: Icon(Icons.navigate_next),
          ),
          const Padding(
            padding: EdgeInsets.only(left:55.0),
            child: Text('Mange your Google Account',
              style: TextStyle(color: Colors.blue,),
            ),
          ),

          TextButton.icon(
            onPressed: (){},
            icon:Icon(Icons.person_pin_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
            label: Padding(
              padding:  const EdgeInsets.only(left:10.0),
              child:  Text('Your Channel',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: SizedBox(
                    height:20,
                    width: 20,
                    child: Image.asset('assets/icons/incog.png')),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Text('Turn on incognito',
                style: Theme.of(context).textTheme.titleMedium
                ,),

            ],
          ),

          TextButton.icon(
            onPressed: (){},
            icon: Icon(Icons.person_add_alt_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
            label: Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Text('Add account',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
