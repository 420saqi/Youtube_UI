


import 'package:flutter/material.dart';

class CastIconOnAppBar extends StatelessWidget {
  const CastIconOnAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _showCastDialog(context);
      },
      icon: const Icon(Icons.cast,),
    );
  }
}

Future _showCastDialog (BuildContext context)
{
  return showDialog(context: context, builder: (context) {
    return  const AlertDialog(

      title: Text('Connect to a device'),
      content: Wrap(
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 30,),
          Text('Searching for devices',style: TextStyle(
            fontSize: 15.0,
          ),
          ),
          SizedBox(width: 30,height: 60,),
          Icon(Icons.reset_tv_outlined),
          SizedBox(width: 40,),
          Text('Link with TV code',style: TextStyle(
            fontSize: 15.0,
          ),
          ),
          SizedBox(width: 60,height: 50,),
          Icon(Icons.info_outline),
          SizedBox(width: 40,),
          Text('Learn more',style: TextStyle(
            fontSize: 15.0,
          ),
          ),
        ],
      ),
      // actions: [
      //   TextButton.icon(
      //             onPressed: (){},
      //             label: const Text('Link with TV code'),
      //         icon: const Icon(Icons.reset_tv),
      //         ),
      //         TextButton.icon(
      //               icon: const Icon(Icons.info_outline),
      //               onPressed: (){},
      //               label: const Text('Learn more'),)
      //
      // ],
    );
  },
  );
}